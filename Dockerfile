FROM perl:slim

RUN cpanm Carton
RUN mkdir /app
