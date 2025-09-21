package main

import (
	"fmt"
	"log"
	"net"
	"os"
	"strconv"

	"github.com/ZephroC/zeph-boids/server/internal/server"
	"github.com/ZephroC/zeph-boids/server/proto"
	"google.golang.org/grpc"
)

func main() {
	port := 50051
	portEnv := os.Getenv("PORT")
	if portEnv != "" {
		portAsInt, err := strconv.Atoi(portEnv)
		if err != nil {
			log.Printf("Cannot parse %s as a valid port", portEnv)
		} else {
			port = portAsInt
		}
	}

	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	s := grpc.NewServer()
	proto.RegisterBoidsServer(s, server.NewServer())
	log.Printf("server listening at %v", lis.Addr())
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
