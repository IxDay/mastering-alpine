FROM alpine:3.4

ENV REPO "https://raw.githubusercontent.com/IxDay/mastering-alpine/master/demo/binary/hello.go"
RUN apk add --no-cache -t build-dependencies go curl \
	&& curl -o /tmp/hello.go "$REPO" \
	&& go build -ldflags '-w -s' -o /usr/local/bin/hello /tmp/hello.go \
	&& rm /tmp/hello.go \
	&& apk del build-dependencies

CMD ["/usr/local/bin/hello"]
