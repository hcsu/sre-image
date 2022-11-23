FROM node:19.1.0-slim
LABEL maintainer="haochuan"

RUN apt-get update -y && apt-get -y dist-upgrade

RUN apt-get -y install telnet vim less curl unzip

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && ./aws/install \
  && aws --version

RUN apt-get -y install \
  postgresql-client \
  default-mysql-client \
  redis-tools
