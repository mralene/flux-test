FROM golang:1.19 AS builder

#set destination for COPY
WORKDIR /workspace

#download go modules
COPY go.mod .
COPY main.go .

#build
RUN go build -o app

FROM alpine:latest
WORKDIR /
COPY --from=builder /workspace/app .

ENTRYPOINT [ "/app" ]

