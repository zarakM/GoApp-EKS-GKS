# FROM golang:1.12.0-alpine3.9

# WORKDIR $GOPATH/src/github.com/zarakM/GoApp-EKS-GKS

# COPY . .

# RUN go get -d -v ./...

# RUN go install -v ./...

# EXPOSE 8080

# CMD ["./initial.go"]


FROM golang:1.8.5-jessie
# create a working directory
WORKDIR /go/src/app
# add source code
ADD src src
# run main.go
CMD ["go", "run", "src/main.go"]
# ## We specify the base image we need for our
# ## go application
# FROM golang:1.12.0-alpine3.9
# ## We create an /app directory within our
# ## image that will hold our application source
# ## files
# RUN mkdir /app
# ## We copy everything in the root directory
# ## into our /app directory
# ADD . /app
# ## We specify that we now wish to execute 
# ## any further commands inside our /app
# ## directory
# WORKDIR /app
# ## we run go build to compile the binary
# ## executable of our Go program
# RUN go build -o main .
# ## Our start command which kicks off
# ## our newly created binary executable
# CMD ["/app/main"]