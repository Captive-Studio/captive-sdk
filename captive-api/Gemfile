source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in captive-api.gemspec.
gemspec

gem "sqlite3", '~> 1.6.3'

gem "sprockets-rails", '~> 3.4.2'

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

group :development do
  gem 'yard', '~> 0.9.34'
end

group :test, :development do
  gem 'rubocop-config-captive', '~> 1.5.0'
end
