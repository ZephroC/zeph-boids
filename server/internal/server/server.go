package server

import (
	"io"
	"log"
	"math"
	"math/rand/v2"
	"time"

	"github.com/ZephroC/zeph-boids/server/proto"
	"google.golang.org/grpc"
)

func NewServer() proto.BoidsServer {
	return &impl{}
}

type impl struct {
	proto.UnimplementedBoidsServer
	//TODO make a proper session manager
}

type circleBoid struct {
	*proto.Boid
	radius          float64
	circleCentreX   float64
	circleCentreY   float64
	angularVelocity float64
	angle           float64
}

func (b *circleBoid) update(dt float64) {
	angleChange := b.angularVelocity * dt
	b.angle = b.angle + angleChange
	lastX := b.Boid.Pos.X
	lastY := b.Boid.Pos.Y
	x := b.radius*math.Cos(b.angle) + b.circleCentreX
	y := b.radius*math.Sin(b.angle) + b.circleCentreY
	b.Pos.X = float32(x)
	b.Pos.Y = float32(y)
	b.Vel.X = float32(x) - lastX
	b.Vel.Y = float32(y) - lastY
}

func (sessionStreamer impl) StreamSession(stream grpc.BidiStreamingServer[proto.BoidsSessionRequest, proto.BoidFrame]) error {
	startTime := time.Now()
	config, err := stream.Recv()
	if err != nil {
		log.Fatalf("Error: %v", err)
		return err
	}
	log.Printf("Starting session: %s", config.Type.String())
	sixtyHzNanos := time.Duration(1000000000/60) * time.Nanosecond
	ticker := time.NewTicker(sixtyHzNanos)
	var state []*circleBoid

	r := rand.New(rand.NewPCG(76543, uint64(startTime.UnixMicro())))
	for i := 0; i < int(config.NumberOfBoids); i++ {
		xR := r.Float64()*float64(config.Dimensions.X) - (float64(config.Dimensions.X) / 2.)
		yR := r.Float64()*float64(config.Dimensions.Y) - (float64(config.Dimensions.Y) / 2.)
		initialAngle := math.Pi / ((r.Float64() * 4.0) - 2.0)
		var vel float64
		randFloat := r.Float64()
		if randFloat >= 0.5 {
			vel = math.Pi * randFloat
		} else {
			vel = -math.Pi * (randFloat + 0.5)
		}
		state = append(state, &circleBoid{
			Boid: &proto.Boid{
				Pos: &proto.Vector2D{X: float32(xR), Y: float32(yR)},
				Vel: &proto.Vector2D{X: float32(math.Cos(initialAngle)), Y: float32(math.Sin(initialAngle))},
				Id:  int32(i),
			},
			radius:          30,
			circleCentreX:   xR,
			circleCentreY:   yR,
			angle:           initialAngle,
			angularVelocity: vel,
		})
	}

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
	tLast := startTime
	for tNow := range ticker.C {
		deltaFromStart := tNow.Sub(startTime).Microseconds()
		ts := float64(deltaFromStart) / 1000000000.
		//log.Printf("Send")
		toSend := make([]*proto.Boid, len(state))
		for i, b := range state {
			b.update(tNow.Sub(tLast).Seconds())
			toSend[i] = b.Boid
		}
		tLast = tNow
		err = stream.Send(
			&proto.BoidFrame{
				FrameNo:   0,
				MsgNo:     0,
				MsgOf:     0,
				Timestmap: ts,
				Boids:     toSend,
			})
		if err != nil {
			return err
		}
	}
	return nil
}
