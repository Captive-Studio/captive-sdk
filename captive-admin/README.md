# CaptiveAdmin

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Gem Version](https://img.shields.io/gem/v/captive_admin.svg)](https://rubygems.org/gems/captive_admin)

A UI theme for ActiveAdmin that follows [Captive](https://captive.fr)'s Design System

![Screenshot](doc/screenshot.png)

## Installation

- Add this to you Gemfile:

```ruby
gem 'captive_admin'
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
  @import "captive_admin/mixins";
  @import "captive_admin/base";
  ```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Captive-Studio/captive_admin.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
