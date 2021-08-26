FROM golang:1.13.4-stretch

ENV GO111MODULE on

RUN apt-get update && apt-get install -y --no-install-recommends \
            autoconf=2.69-10 \
            automake=1:1.15-6 \
            libtool=2.4.6-2 \

  && rm -rf /var/lib/apt/lists/*

ENV PROTOBUF_VERSION 3.11.4
RUN wget -O /usr/local/src/protobuf.tar.gz "https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOBUF_VERSION}/protobuf-cpp-${PROTOBUF_VERSION}.tar.gz"
WORKDIR /usr/local/src
RUN tar xzf protobuf.tar.gz
WORKDIR /usr/local/src/protobuf-${PROTOBUF_VERSION}
RUN ./autogen.sh && ./configure && make && make install && ldconfig

ENV GO_PROTOBUF_VERSION 1.4.2
RUN git clone https://github.com/golang/protobuf /go/src/github.com/golang/protobuf
WORKDIR /go/src/github.com/golang/protobuf
RUN git checkout "v${GO_PROTOBUF_VERSION}"
RUN go install github.com/golang/protobuf/protoc-gen-go

ENV GRPC_GATEWAY_VERSION 1.14.6
RUN git clone https://github.com/grpc-ecosystem/grpc-gateway /go/src/github.com/grpc-ecosystem/grpc-gateway
WORKDIR /go/src/github.com/grpc-ecosystem/grpc-gateway
RUN git checkout "v${GRPC_GATEWAY_VERSION}"
RUN go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway
RUN go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger

RUN rm -rf /var/lib/apt/lists/* protobuf.tar.gz proto

WORKDIR $GOPATH/src/github.com/iMarke/only-live-api

# Dart
RUN apt-get update && apt-get -y install apt-transport-https curl
RUN sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
RUN sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
RUN apt-get update
RUN apt-get install dart -y
ENV PATH="${PATH}:/usr/lib/dart/bin/"
ENV PATH="${PATH}:/root/.pub-cache/bin"
RUN pub global activate protoc_plugin

# CMD ["make", "grpc"]
