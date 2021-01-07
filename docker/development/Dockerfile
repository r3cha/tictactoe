FROM ruby:3.0.0-alpine3.12 as build-base

RUN apk update && apk add --no-cache g++ make curl git make sqlite-dev postgresql-dev tzdata 

RUN gem install rails -v '6.1.0'

WORKDIR /app
