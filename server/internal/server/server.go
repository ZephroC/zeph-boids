package server

import (
	"io"
	"log"
	"time"

	"github.com/ZephroC/zeph-boids/server/proto"
	"google.golang.org/grpc"
)

func NewServer() proto.BoidsServer {
	return &impl{}
}

type impl struct {
	proto.UnimplementedBoidsServer
}

func (i impl) StreamSession(stream grpc.BidiStreamingServer[proto.BoidsSessionRequest, proto.BoidFrame]) error {
	startTime := time.Now()
	config, err := stream.Recv()
	if err != nil {
		log.Fatalf("Error: %v", err)
		return err
	}
	log.Printf("Starting session: %s", config.Type.String())
	sixtyHzNanos := time.Duration(1000000000/60) * time.Nanosecond
	ticker := time.NewTicker(sixtyHzNanos)
	go func() {
		req, err := stream.Recv()

		if err != nil {
			if err == io.EOF {
				log.Fatalf("Closing stream")
			}
			log.Fatalf("%v", err)
			return
		}
		log.Printf("req: %s", req.Type.String())
		config = req // TODO put in an atomic
	}()
	for tNow := range ticker.C {
		deltaFromStart := tNow.Sub(startTime).Microseconds()
		ts := float64(deltaFromStart) / 1000000000.
		log.Printf("Send")
		err = stream.Send(
			&proto.BoidFrame{
				FrameNo:   0,
				MsgNo:     0,
				MsgOf:     0,
				Timestmap: ts,
				Boids: []*proto.Boid{
					{
						Pos: &proto.Vector2D{
							X: 0,
							Y: 0,
						},
						Vel: &proto.Vector2D{
							X: 0,
							Y: 0,
						},
						Id: 0,
					},
				},
			})
		if err != nil {
			return err
		}
	}
	return nil
}
