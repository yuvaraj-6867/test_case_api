#!/bin/bash
set -e

# Install gems
bundle install --without development test

# Setup database
bundle exec rails db:create RAILS_ENV=production
bundle exec rails db:migrate RAILS_ENV=production
bundle exec rails db:seed RAILS_ENV=production

# Start server
exec bundle exec rails server -b 0.0.0.0 -p $PORT