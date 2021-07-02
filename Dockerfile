FROM debian:jessie
LABEL maintainer="Michael Buluma"

ENV DEBIAN_FRONTEND noninteractive
ENV pip_packages "wheel cryptography ansible"


# Pre-Check version
RUN python --version && pip --version
