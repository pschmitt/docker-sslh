FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y sslh && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/config"]

ENTRYPOINT ["/usr/sbin/sslh", "-F/config/sslh.cfg"]
