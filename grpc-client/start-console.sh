#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0);pwd)
cd $SCRIPT_DIR

grpcc --proto ../grpc-go/examples/helloworld/helloworld/helloworld.proto --address grpc-server:50051 -i
