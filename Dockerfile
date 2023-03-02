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

# RUN curl "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-413.0.0-linux-x86_64.tar.gz" -o "gcpcli.tar.gz" \
#   && tar xvzf gcpcli.tar.gz \
#   && ./google-cloud-sdk/install.sh -q
# ENV PATH $PATH:/google-cloud-sdk/bin
