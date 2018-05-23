FROM golang:1.9.6

LABEL maintainer="yuichi.orihara@orithankyou.co.jp"

RUN apt-get update && apt-get install --yes locales locales-all tzdata vim less net-tools curl wget git telnet

RUN update-locale LANG=en_US.UTF-8

WORKDIR /root
ENV TZ Asia/Tokyo

ENV PATH $PATH:$GOPATH/bin

RUN go get -u google.golang.org/grpc/examples/helloworld/greeter_server

COPY loop.sh /root/loop.sh

CMD ["greeter_server"]

