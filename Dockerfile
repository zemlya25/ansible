FROM alpine

RUN apk add --no-cache bash openssh-client rsync git python py-pip build-base python-dev libffi-dev openssl-dev \
    && pip install --no-cache-dir git+git://github.com/ansible/ansible.git@devel \
    && apk del --rdepends git py-pip build-base python-dev libffi-dev openssl-dev
