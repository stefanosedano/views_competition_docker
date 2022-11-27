FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev python3-venv python3-matplotlib pkg-config  build-essential g++ libfreetype6-dev libxft-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && apt-get install -y git

RUN pip install --upgrade pip
RUN pip install setuptools==57.5.0

RUN git clone https://github.com/stefanosedano/views_competition.git
WORKDIR "/views_competition"
COPY ./run.sh /views_competition/run.sh



