FROM gcr.io/bitnami-containers/minideb-extras:jessie-r14

COPY . /app

WORKDIR /app

EXPOSE 3000

ENTRYPOINT ["main.go"]