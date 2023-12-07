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

About Captive
-------------

![captive](https://raw.githubusercontent.com/Captive-Studio/assets/main/logo_captive_blue_avec_fond.webp)

captive-crash-reporter is maintained and funded by Captive.
The names and logos for captive are trademarks of captive-studio.

We love open source software!
See [our other projects][community] or
[hire us][hire] to design, develop, and grow your product.

[community]: https://github.com/Captive-Studio
[hire]: https://www.captive.fr/contact?utm_source=github
