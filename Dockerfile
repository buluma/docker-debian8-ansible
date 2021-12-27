FROM debian:jessie
LABEL maintainer="Michael Buluma"

ENV DEBIAN_FRONTEND noninteractive

ENV pip_packages "wheel cryptography ansible"

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       sudo \
       build-essential libffi-dev libssl-dev \
       python-pip python-dev \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

# Remove python2
RUN apt purge -y python2.7-minimal

# You already have Python3 but 
# don't care about the version 
# RUN ln -s /usr/bin/python3 /usr/bin/python

# Same for pip
RUN apt-get update && apt install -y python3-pip

# Confirm the new version of Python: 3
# RUN python --version
RUN pip3 --version

# Install Ansible via pip.
RUN pip3 install $pip_packages
