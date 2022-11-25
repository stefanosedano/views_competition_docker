FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev python3.8-venv \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && apt-get install -y git

RUN apt-get update
RUN apt-get -y install gdal-bin
RUN apt-get -y install libgdal-dev
RUN export CPLUS_INCLUDE_PATH=/usr/include/gdal
RUN export C_INCLUDE_PATH=/usr/include/gdal

RUN git clone https://github.com/stefanosedano/views_competition.git
WORKDIR "/views_competition"
RUN pip install --editable .
RUN pip install -r requirements.txt



