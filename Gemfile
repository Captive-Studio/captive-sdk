source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in captive-sdk.gemspec.
gemspec

# Your gem is dependent on a prerelease version of Rails. Once you can lock this
# dependency down to a specific version, move it to your gemspec.
gem "rails", github: "rails/rails", branch: "main"

gem "puma"

gem "sqlite3"

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

group :development do
  gem 'yard', '~> 0.9.34'
end

group :rubocop do
  gem 'rubocop-config-captive', '~> 1.5.0'
end
