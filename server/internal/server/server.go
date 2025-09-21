package server

import (
	"github.com/ZephroC/zeph-boids/server/proto"
	"google.golang.org/grpc"
)

func NewServer() proto.BoidsServer {
	return &impl{}
}

type impl struct {
	pb.UnimplementedBoidsServer
}

func (i impl) StreamSession(g grpc.BidiStreamingServer[proto.BoidsSessionRequest, proto.BoidFrame]) error {
	//TODO implement me
	panic("implement me")
}

func (i impl) mustEmbedUnimplementedBoidsServer() {
	//TODO implement me
	panic("implement me")
}
