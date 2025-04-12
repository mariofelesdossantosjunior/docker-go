FROM golang:latest as BUILDER

WORKDIR /app
COPY main.go .
COPY go.mod .

RUN go build -o main .

FROM golang:alpine 

COPY --from=BUILDER /app/main .

CMD [ "./main" ]

