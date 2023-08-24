# rubocop:disable Captive/Translation/RailsI18nPresence
source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in captive-sdk.gemspec.
gemspec

gem "rails", "~> 7.0.6"
gem "puma", "~> 6.3.0"

gem "sqlite3", "~> 1.6.3"

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"
gem "sprockets-rails", ">= 3.4.2"

group :development do
  gem "yard", "~> 0.9.34"
  gem "rails-erd", "~> 1.7.2"
end

group :test do
  gem "rspec", "~> 3.12.0"
  gem "rspec-mocks", "~> 3.12.6"
end

group :development, :test do
  gem "rubocop-config-captive", "~> 1.6.0"
end

# rubocop:enable Captive/Translation/RailsI18nPresence
