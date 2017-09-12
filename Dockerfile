FROM alpine:latest

RUN apk add --update coreutils bash openssh-client git && rm -rf /var/cache/apk/*

COPY config.sh /ssh/config.sh

CMD ["ssh-agent"]
