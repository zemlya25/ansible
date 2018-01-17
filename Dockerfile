FROM alpine

RUN apk add --no-cache bash openssh-client rsync ansible py-pip \
    && pip install docker-compose s3cmd \
    && apk del py-pip
