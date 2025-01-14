# syntax=docker/dockerfile:1

# Use the correct Ruby version
ARG RUBY_VERSION=3.4.1
FROM ruby:$RUBY_VERSION-slim AS base

# Set working directory
WORKDIR /app

# Install dependencies
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    build-essential \
    libpq-dev \
    nodejs \
    yarn \
    postgresql-client && \
    rm -rf /var/lib/apt/lists/*

# Install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy the entire app
COPY . .

# Precompile assets (optional for development)
RUN SECRET_KEY_BASE_DUMMY=1 bundle exec rails assets:precompile

# Expose port 3000 for Rails server
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
