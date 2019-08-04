FROM alpine:3.10
RUN apk add --no-cache ca-certificates
ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
ARG token
RUN /microscanner ${token} && rm /microscanner
RUN echo "No vulnerabilities!"
CMD ["echo", "Hello"]