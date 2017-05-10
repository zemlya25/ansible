FROM alpine

RUN apk add --no-cache bash openssh-client rsync \
    && apk add --no-cache --virtual build-deps git python py-pip build-base python-dev libffi-dev openssl-dev \
    && pip install --no-cache-dir git+git://github.com/ansible/ansible.git@devel \
    && apk del build-deps
