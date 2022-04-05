FROM golang:1.18
RUN apt-get update && apt-get install -y upx-ucl

RUN mkdir -p /go/src/upx-golang-m1-test
WORKDIR /go/src/upx-golang-m1-test
ADD test.go .
ADD go.mod .
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o /test-binary

RUN upx-ucl /test-binary

ENTRYPOINT /test-binary

