FROM debian:jessie
LABEL maintainer="Michael Buluma"

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies.
# RUN apt-get update \
#    && apt-get install -y --no-install-recommends \
#       sudo \
#       build-essential libffi-dev libssl-dev \
#       python-pip python-dev \
#    && rm -rf /var/lib/apt/lists/* \
#    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
#    && apt-get clean
    
RUN apt-get install -y software-properties-common curl \ 
    && add-apt-repository ppa:deadsnakes/ppa \ 
    && apt-get update \ 
    sudo apt-get install -y python3.6 python3.6-venv 
