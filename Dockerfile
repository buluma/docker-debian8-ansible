FROM debian:jessie
LABEL maintainer="Michael Buluma"

ENV DEBIAN_FRONTEND noninteractive
ENV pip_packages "wheel cryptography ansible"


# Pre-Check version
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    sudo \
    build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev
