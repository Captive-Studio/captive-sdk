# captive-admin

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Gem Version](https://img.shields.io/gem/v/captive-admin.svg)](https://rubygems.org/gems/captive-admin)

A UI theme for ActiveAdmin that follows [Captive](https://captive.fr)'s Design System

![Screenshot](doc/screenshot.png)

## Installation

- Add this to you Gemfile:

```ruby
gem 'captive-admin'
```

- Run `bundle install`

- Edit `active_admin.scss` file
  - Remove these two lines
  ```scss
  @import "active_admin/mixins";
  @import "active_admin/base";
  ```
  - Replace with these two lines
  ```scss
  @import "captive-admin/mixins";
  @import "captive-admin/base";
  ```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Captive-Studio/captive-sdk.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
