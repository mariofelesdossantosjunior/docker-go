FROM golang:latest as BUILDER

WORKDIR /app
COPY main.go .
COPY go.mod .

RUN go build -ldflags "-s -w" -o main .

FROM scratch 

COPY --from=BUILDER /app/main .

CMD [ "./main" ]

