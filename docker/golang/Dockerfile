FROM golang:1.19-alpine
COPY ./go-app /app/go
WORKDIR /app/go

RUN go install github.com/cosmtrek/air@latest

RUN go mod download

CMD ["air", "-c", ".air.toml"]