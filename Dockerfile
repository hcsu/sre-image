FROM alpine:latest
LABEL maintainer="haochuan"

RUN apk update && apk upgrade
RUN apk add --no-cache bash
RUN apk add --no-cache \
  curl \
  unzip \
  busybox-extras \
  bind-tools \
  vim \
  less \
  postgresql-client \
  mariadb-client \
  redis \
  aws-cli