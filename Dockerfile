FROM ruby:2.6.3

ENV LANG C.UTF-8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /oauth
WORKDIR /oauth
ADD Gemfile /oauth/Gemfile
ADD Gemfile.lock /oauth/Gemfile.lock
RUN bundle install
COPY . /oauth