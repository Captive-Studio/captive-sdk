source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in captive-sdk.gemspec.
gemspec


gem "rails", '~> 7.0.6'
gem "puma", '~> 6.3.0'

gem "sqlite3", '~> 1.6.3'

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

group :development do
  gem 'yard', '~> 0.9.34'
end

group :rubocop do
  gem 'rubocop-config-captive', '~> 1.5.0'
end
