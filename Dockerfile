From golang:1.19-alpine

ENV MONGO_USER=""
ENV MONGO_PASS=""
ENV MONGO_HOST=""

WORKDIR /app
COPY . /app
RUN whoami

RUN go mod init github.com/thedevopsschool/user-service
RUN go mod tidy
RUN go build .
CMD ["/app/user-service"]

