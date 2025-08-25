package main

import (
	"log"
	"net"
	"time"

	pb "github.com/ZephroC/zeph-boids/server/proto"
	"google.golang.org/grpc"
)

type server struct {
	pb.UnimplementedBoidsServer
}

func (s *server) GetBoids(req *pb.BoidsRequest, stream pb.Boids_GetBoidsServer) error {
	for {
		if err := stream.Send(&pb.Boid{X: 1.0, Y: 2.0}); err != nil {
			return err
		}
		time.Sleep(1 * time.Second)
	}
}

func main() {
	lis, err := net.Listen("tcp", ":50051")
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	s := grpc.NewServer()
	pb.RegisterBoidsServer(s, &server{})
	log.Printf("server listening at %v", lis.Addr())
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
