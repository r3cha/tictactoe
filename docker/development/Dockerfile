FROM ruby:3.0.0-alpine3.12 as build-base

RUN apk update && apk add --no-cache g++ make curl git make sqlite-dev postgresql-dev tzdata 

WORKDIR /app

RUN echo "install: --no-rdoc --no-ri" >> ~/.gemrc
RUN echo "update:  --no-rdoc --no-ri" >> ~/.gemrc 

RUN gem install bundler

RUN bundle config --global jobs $(nproc --all)

COPY Gemfile Gemfile.lock ./
RUN bundle install
