# Captive::Crash::Reporter

Complete installation for [Sentry](https://sentry.io/)

## Installation
Add this line to your application's Gemfile:

```ruby
gem "captive-crash-reporter"
```

And then execute:
```bash
$ bundle
```

configure your environments variables : 

```bash
# DSN used by sentry to identify the app
SENTRY_DSN=

# Environment name send to sentry
# Default : Rails.env
SENTRY_ENV=

# Percentages of traces send to sentry
# Default : 0.1
SENTRY_TRACES_RATE=
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
