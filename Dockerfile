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
RUN apt-get install build-essential checkinstall sudo \
    && sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
