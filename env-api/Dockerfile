FROM golang:1.12.5-alpine3.9 as builder

WORKDIR /go/src/github.com/xande0812/envoy-test/env-api
COPY . .
RUN go build

FROM alpine:3.9
WORKDIR /
COPY --from=builder /go/src/github.com/xande0812/envoy-test/env-api/env-api .

EXPOSE 80

ENTRYPOINT ["/env-api"]
