FROM perl:slim
LABEL maintainer "Mike Stemle, Jr. <themanchicken@gmail.com>"

RUN apt-get update -y \
  && apt-get install -y build-essential \
  && cpanm local::lib \
  && cpanm Carton \
  && rm -rf "$HOME/.cpanm" \
  && apt-get clean autoclean \
  && apt-get autoremove -y
