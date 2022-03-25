FROM node:12
LABEL maintainer="haochuan"

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && ./aws/install \
  && aws --version

RUN apt-get update \
  && apt-get install -y lsb-release \
  && apt-get install -y dnsutils

RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' \
  && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
  && apt-get update \
  && apt-get -y install postgresql 

RUN apt-get -y install mysql-client
RUN apt-get -y install telnet

RUN apt-get -y install vim
