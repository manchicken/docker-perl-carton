FROM perl:slim

RUN cpanm Carton
RUN mkdir /app
WORKDIR /app