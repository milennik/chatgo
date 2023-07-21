FROM golang:latest

WORKDIR /app
RUN GO111MODULE=on
COPY go.mod go.sum ./
RUN go mod download
COPY . . 
RUN go build -o main .
EXPOSE 5000

CMD ["./main"]