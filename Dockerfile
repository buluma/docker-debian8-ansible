FROM debian:jessie
LABEL maintainer="Michael Buluma"

ENV DEBIAN_FRONTEND noninteractive
ENV pip_packages "wheel cryptography ansible"

# Install dependencies.
# RUN apt-get update \
#    && apt-get install -y --no-install-recommends \
#       sudo \
#       build-essential libffi-dev libssl-dev \
#       python-pip python-dev \
#    && rm -rf /var/lib/apt/lists/* \
#    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
#    && apt-get clean
    
# RUN apt-get update \
#    && apt-get install -y make build-essential libssl-dev \  
#    zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl \ 
#    llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev \ 
#    liblzma-dev 

# Install pythin 3.6
# RUN apt-get install python3.6 python3.6-venv 

# which PIP
# RUN python --version && python3 --version

# Install dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    sudo \
    build-essential libffi-dev libssl-dev libreadline-gplv2-dev libncursesw5-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev zlib1g-dev python3-pip

# Install2
# RUN sudo apt-get install checkinstall
#     && apt-get install libreadline-gplv2-dev libncursesw5-dev \
#     libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev zlib1g-dev

# Check version
RUN python3 --version && pip3 --version

# Install Ansible via pip.
# RUN pip3 install --upgrade pip3 setuptools==44.1.1 \
#     && pip3 install $pip_packages
    
# RUN python3 get-pip.py pip==9.0.2 wheel==0.30.0 setuptools==28.8.0
RUN python3 -m pip install --upgrade pip setuptools==44.1.1 pip==18.1 \
