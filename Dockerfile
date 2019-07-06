FROM perl:slim

RUN apt-get update
RUN apt-get install -y build-essential
RUN cpanm local::lib
RUN cpanm Carton