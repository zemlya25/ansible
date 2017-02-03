FROM python:2-slim

RUN apt-get update \
    && apt-get install -y rsync git-core \
    && pip install git+git://github.com/ansible/ansible.git@devel \
    && rm -rf /tmp/pip* \
    && rm -rf /var/lib/apt/lists/*
