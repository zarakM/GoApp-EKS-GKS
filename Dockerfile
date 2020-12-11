FROM golang:1.8.5-jessie

COPY . /app

WORKDIR /app

EXPOSE 3000

ENTRYPOINT ["main.go"]