FROM node:10.1.0

LABEL maintainer="yuichi.orihara@orithankyou.co.jp"

RUN apt-get update && apt-get install --yes locales locales-all tzdata vim less net-tools curl wget git telnet

RUN update-locale LANG=en_US.UTF-8

WORKDIR /root
RUN git clone https://github.com/grpc/grpc-go
RUN npm install -g grpcc  --unsafe-perm

ENV TZ Asia/Tokyo
ENV NODE_PATH /usr/local/lib/node_modules


COPY loop.sh /root/loop.sh

CMD ["/root/loop.sh"]

