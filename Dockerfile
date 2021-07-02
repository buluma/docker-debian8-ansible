FROM debian:jessie
LABEL maintainer="Jeff Geerling"

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-utils \
    sudo

RUN apt-get install -y --no-install-recommends wget build-essential checkinstall \
    libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev

# Test wget
RUN wget -h

RUN pwd && cd /usr/src && sudo wget --no-check-certificate https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz 

RUN  pwd && ls -a . && ls /usr/src
# && sudo tar xzf Python-3.9.6.tgz

# Install Python
RUN cd /usr/src/Python-3.9.6 && sudo ./configure --enable-optimizations && sudo make altinstall
