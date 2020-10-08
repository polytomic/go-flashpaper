FROM golang:1.15 as builder

WORKDIR /app
COPY . .
RUN go build

ENV PORT=5300
EXPOSE 5300

CMD /app/go-flashpaper --external-tls