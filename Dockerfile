FROM ubuntu:latest

ENV HOME /root
WORKDIR $HOME

RUN apt-get update \
 && apt-get install -y \
    build-essential \
    git \
    wget \
    libncurses5-dev \
    openssl \
    libssl-dev \
    fop \
    xsltproc \
    unixodbc-dev \
    autoconf 

RUN git clone https://github.com/talentdeficit/erlenv.git .erlenv
RUN echo 'export PATH="$HOME/.erlenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(erlenv init -)"' >> ~/.bashrc
RUN exec $SHELL
