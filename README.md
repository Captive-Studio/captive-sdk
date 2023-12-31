# captive-sdk

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Gem Version](https://img.shields.io/gem/v/captive-sdk.svg)](https://rubygems.org/gems/captive-sdk)

Captive SDK is a tool that includes everything needed to create an web application quickly

## Usage

How to use my plugin.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "captive-sdk"

# or include each gem manually

# gem "captive-authentication"
# gem "captive-admin"
# gem "captive-api"
# gem "captive-theme"
```

And then execute:

```bash
bundle
```

## Frameworks and libraries

- [captive-authentication](https://github.com/Captive-Studio/captive-sdk/blob/main/captive-authentication/README.md), Devise authentication with email confirmations, password resets, and omniauth solutions
- [captive-admin](https://github.com/Captive-Studio/captive-sdk/blob/main/captive-admin/README.md), A UI theme for **ActiveAdmin** that follows [Captive](https://captive.fr)'s Design System
- [captive-api](https://github.com/Captive-Studio/captive-sdk/blob/main/captive-api/README.md), a library to made an API quickly
- [captive-theme](https://github.com/Captive-Studio/captive-sdk/blob/main/captive-theme/README.md), A UI theme that follows [Captive](https://captive.fr)'s Design System
- [captive-crash-reporter](https://github.com/Captive-Studio/captive-sdk/blob/main/captive-crash-reporter/README.md), A crash reporter for [Captive](https://captive.fr) who send errors on [Sentry](https://sentry.io/)

## Contributing

### Create a new gem

You can use a [Rails Engine](https://guides.rubyonrails.org/engines.html) to add a new gem into the project :

- `./bin/rails_generate_plugin`

if you want to use rspec in your engine, follow [this tutorial](https://www.hocnest.com/blog/testing-an-engine-with-rspec/)

### Deployment

use the command line below to deploy a new version

```
# Usage : script/release (major|minor|patch)

script/release patch
```

### Inspiration

The purpose of captive-sdk is to create a SaaS Framework to build products faster with Ruby on Rails.

It was inspired by :

- <https://businessclasskit.com/>
- <https://bullettrain.co/>
- <https://github.com/archonic/limestone/tree/master>
- <https://jumpstartrails.com/>
- <https://www.getsjabloon.com/>

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

About Captive
-------------

![captive](https://raw.githubusercontent.com/Captive-Studio/assets/main/logo_captive_blue_avec_fond.webp)

captive-sdk is maintained and funded by Captive.
The names and logos for captive are trademarks of captive-studio.

We love open source software!
See [our other projects][community] or
[hire us][hire] to design, develop, and grow your product.

[community]: https://github.com/Captive-Studio
[hire]: https://www.captive.fr/contact?utm_source=github
