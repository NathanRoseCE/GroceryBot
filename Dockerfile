# syntax=docker/dockerfile:1
FROM ruby:3.0
RUN apt-get update -qq && apt-get install -y nodejs sqlite3 -qq
RUN gem install bundler -v 2.1.4
WORKDIR /GroceryBot
COPY Gemfile /GroceryBot/Gemfile
COPY Gemfile.lock /GroceryBot/Gemfile.lock
RUN bundle install


CMD ["bash"]
