# Captive::Authentication

Devise authentication with email confirmations, password resets, and omniauth solutions

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "captive-authentication"
```

And then execute:
```bash
$ bundle
```

Copy the migrations with the command :

```bash
$ rails captive_authentication:install:migrations
```

run your migrations :
```bash
$ rails db:migration
```

## Structure

A graph of the database structure can be generated in order to better understand the interactions between the different models.

![](docs/erd.png)

To produce this graph:

```bash
$ cd spec/dummy
$ bundle exec rake erd
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
