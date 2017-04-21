FROM alpine:3.5

RUN apk --update add rsync dumb-init

ENV ALPINE_REPO "rsync://rsync.alpinelinux.org/alpine/v3.5/main/x86_64"
COPY alpine-mirror /etc/periodic/hourly/alpine-mirror

VOLUME ["/data"]
CMD /etc/periodic/hourly/alpine-mirror && dumb-init -- crond -f -l 0
