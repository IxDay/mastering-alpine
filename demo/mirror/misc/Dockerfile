FROM alpine:3.4

RUN echo "http://172.17.0.4" > "/etc/apk/repositories"
RUN apk --update add darkhttpd

EXPOSE 80
ENTRYPOINT ["/usr/bin/darkhttpd"]
