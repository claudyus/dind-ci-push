FROM alpine:latest

RUN apk add --update openssh-client git && rm -rf /var/cache/apk/*

COPY config.sh /ssh

CMD ["ssh-agent"]
