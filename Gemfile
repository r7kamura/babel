source "https://rubygems.org"

# default
gem "rails", "3.2.6"
gem "mysql2"
gem "jquery-rails"

# custom
gem "slim"
gem "font-awesome-rails"

group :assets do
  gem "sass-rails",   "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "uglifier", ">= 1.0.3"
end

group :development do
  gem "pry"
end

group :production do
  # for Heroku
  gem "pg"
  gem "thin"
  gem "therubyracer"
end
