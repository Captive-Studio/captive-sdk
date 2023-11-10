# rubocop:disable Captive/Translation/RailsI18nPresence
source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in captive-sdk.gemspec.
gemspec

gem "rails", "~> 7.1.0"
gem "puma", "~> 6.4.0"

gem "sqlite3", "~> 1.6.3"
gem "pg", "~> 1.5.3"

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"
gem "sprockets-rails", "~> 3.4.2"
gem "jwt", "~> 2.7.1"

group :development do
  gem "yard", "~> 0.9.34"
  gem "rails-erd", "~> 1.7.2"
end

group :test do
  gem "rspec", "~> 3.12.0"
  gem "rspec-mocks", "~> 3.12.6"
  gem "rspec-rails", "~> 6.0.3"
  gem "factory_bot_rails", "~> 6.2.0"
  gem "webmock", "~> 3.19.0"
  gem "shoulda-matchers", "~> 5.3.0"
end

group :development, :test do
  gem "rubocop-config-captive", "~> 1.9.1"
end

# rubocop:enable Captive/Translation/RailsI18nPresence
