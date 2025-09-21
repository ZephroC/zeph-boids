SHELL := /bin/bash

.PHONY: all proto server client clean

all: server client

proto:
	@echo "Generating protobuf code..."
	protoc --go_out=./server --go-grpc_out=./server --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative proto/boids.proto
	mkdir -p clients/flutter/lib/src/generated
	protoc --dart_out=grpc:clients/flutter/lib/src/generated -Iproto proto/boids.proto

server: proto
	@echo "Building server..."
	cd server && go build -o ../zeph-boids-server

client: proto
	@echo "Building client..."
	cd clients/flutter && flutter build web

web: proto
	CHROME_EXECUTABLE="/var/lib/flatpak/app/com.google.Chrome/current/active/export/bin/com.google.Chrome"; export CHROME_EXECUTABLE


all: server proto

clean:
	@echo "Cleaning up..."
	rm -rf server/prooto
	rm -f zeph-boids-server
	rm -rf client/lib/src/generated
	cd client && flutter clean
