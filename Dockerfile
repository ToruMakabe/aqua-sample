FROM alpine:3.3
RUN apk add --no-cache ca-certificates
CMD ["echo", "Hello"]
