FROM python:2

RUN apt-get update \
    && apt-get install -y rsync \
    && pip install git+git://github.com/ansible/ansible.git@devel \
    && rm -rf /var/lib/apt/lists/*
