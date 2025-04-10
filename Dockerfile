FROM golang:alpine

WORKDIR /app
COPY main.go .
COPY go.mod .

RUN go build -o main .

CMD [ "./main" ]

