FROM ruby:3.0.2-alpine

ENV NODE_VERSION 12

ENV INSTALL_PATH /opt/app

RUN mkdir -p $INSTALL_PATH

RUN apk add shared-mime-info

RUN apk add --no-cache sqlite-dev

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      libstdc++ \
      libffi-dev \
      libc-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      libpq \
      make \
      nodejs \
      pkgconfig \
      postgresql-dev\
      py-pip \
      tzdata \
      yarn

RUN gem install pg

RUN gem install rails -v 6.1.4

RUN gem install bundler

WORKDIR $INSTALL_PATH