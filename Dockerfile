FROM alpine

RUN apk add --no-cache rsync git python py-pip build-base python-dev libffi-dev openssl-dev \
    && pip install git+git://github.com/ansible/ansible.git@devel \
    && apk del git py-pip build-base python-dev libffi-dev openssl-dev \
    && rm -rf /tmp/*
