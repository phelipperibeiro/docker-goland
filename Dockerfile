FROM golang:alpine AS builder

WORKDIR $GOPATH/src/rocks/
COPY ./code-education-rocks.go .

RUN GOOS=linux go build -ldflags="-w -s" -o /go/bin/rocks

FROM scratch

COPY --from=builder /go/bin/rocks /go/bin/rocks

ENTRYPOINT ["/go/bin/rocks"]
