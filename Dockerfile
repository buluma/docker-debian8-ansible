FROM debian:jessie
LABEL maintainer="Michael Buluma"

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       sudo \
       build-essential libffi-dev libssl-dev \
       python-pip python-dev \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

ENV pip_packages "wheel cryptography ansible"

# Remove python2
RUN apt purge -y python2.7-minimal

# You already have Python3 but 
# don't care about the version 
RUN ln -s /usr/bin/python3 /usr/bin/python

# Same for pip
RUN apt install -y python3-pip
RUN ln -s /usr/bin/pip3 /usr/bin/pip

# Confirm the new version of Python: 3
RUN python --version
