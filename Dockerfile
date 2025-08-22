FROM ruby:3.3.0-slim

WORKDIR /app

RUN apt-get update -qq && apt-get install -y build-essential libsqlite3-dev

COPY Gemfile Gemfile.lock ./
RUN bundle install --without development test

COPY . .

ENV RAILS_ENV=production
ENV RAILS_SKIP_ASSET_COMPILATION=1

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]