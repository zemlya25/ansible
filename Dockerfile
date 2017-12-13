FROM alpine

RUN apk add --no-cache bash openssh-client rsync ansible
