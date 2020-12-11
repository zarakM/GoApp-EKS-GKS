FROM gcr.io/bitnami-containers/minideb-extras:jessie-r14

COPY /main /app/main

WORKDIR /app

EXPOSE 3000

ENTRYPOINT ["/app/main"]