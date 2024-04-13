FROM golang:1.22

WORKDIR /app

COPY go.mod ./
COPY *.go ./

RUN GOOS=linux go build -o /fullcycle

CMD ["/fullcycle"]