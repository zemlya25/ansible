FROM williamyeh/ansible:debian8

RUN apt-get update \
    && apt-get install -y rsync \
    && rm -rf /var/lib/apt/lists/*
