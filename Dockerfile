FROM ruby:3.4.2

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /usr/src/app
COPY Gemfile .
COPY Gemfile.lock .

RUN gem install bundler && bundle install

EXPOSE 4000
