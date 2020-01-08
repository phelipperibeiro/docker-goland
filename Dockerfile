FROM golang:latest
WORKDIR /go/src/app
COPY . .
ENTRYPOINT [ "go", "run", "code-education-rocks.go" ]
