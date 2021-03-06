FROM ruby:2.5.3

RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends \
        build-essential \
        libpq-dev \
        postgresql-client \
        nodejs \
        --fix-missing \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app 
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN gem install bundler && bundle update && bundle install --jobs 20 --retry 5

COPY . ./

