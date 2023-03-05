FROM ruby:latest AS myjekyll

RUN gem install jekyll

WORKDIR /srv/jekyll