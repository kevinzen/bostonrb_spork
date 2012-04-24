source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  gem "rspec-rails"
  gem 'heroku'
  gem 'spork'
  gem 'foreman'
  gem "capybara"
  gem "capybara-webkit"
  gem "cucumber-rails", require: false
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "shoulda-matchers"
  gem 'forgery'

  # This points to a fork of ruby-debug19 that works with ruby 1.9.3
  # see https://github.com/cldwalker/debugger
  gem 'debugger'
end