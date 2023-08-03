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

# gem "captive-admin"
# gem "captive-api"
# gem "captive-theme"
```

And then execute:
```bash
$ bundle
```

## Frameworks and libraries

- [captive-admin](https://github.com/Captive-Studio/captive-sdk/blob/main/captive-admin/README.md), A UI theme for **ActiveAdmin** that follows [Captive](https://captive.fr)'s Design System
- [captive-api](https://github.com/Captive-Studio/captive-sdk/blob/main/captive-api/README.md), a library to made an API quickly
- [captive-theme](https://github.com/Captive-Studio/captive-sdk/blob/main/captive-theme/README.md), A UI theme that follows [Captive](https://captive.fr)'s Design System


## Contributing

### Create a new gem

You can use a [Rails Engine](https://guides.rubyonrails.org/engines.html) to add a new gem into the project :

- `rails plugin new captive-authentication --mountable --skip-test --dummy-path=spec/dummy`
- remove the `version.rb` file
- in your `.gemspec`, get the version with the line `version = File.read(File.expand_path("../CAPTIVE_SDK_VERSION", __dir__)).strip`

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
