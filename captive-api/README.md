# Captive::API

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Gem Version](https://img.shields.io/gem/v/captive-api.svg)](https://rubygems.org/gems/captive-api)

Code commun des API de Captive

## Usage

How to use my plugin.

Implementation :

```ruby
module API
  module V1
    class BaseController < Captive::API::ApplicationController
      ...
    end
  end
end
```

The class `Captive::API::ApplicationController` includes 2 concerns :

| Nom du concern |  Description  |
|:-----|:--------:|
| [pagination](https://github.com/Captive-Studio/captive-api/blob/main/app/controllers/concerns/api/pagination_concern.rb) | Logique de pagination pour les index |
| [render error](https://github.com/Captive-Studio/captive-api/blob/main/app/controllers/concerns/api/render_error_concern.rb) | Attrape certaines erreurs pour retourner une page d'erreur en json. Permet aussi d'utiliser les méthodes pour rendre des pages d'erreur json manuellement |

### PaginationConcern

#### `#pagination`

You can use the pagination method like this :

```ruby
@tenues = @tenues.page(pagination[:page])
                 .per(pagination[:per_page])
```

*The method `page` and `per` come from [kaminari](https://github.com/kaminari/kaminari)*

The pagination method return an hash like this :

```ruby
{ page: 1, per_page: 20 }
```

⚠️ The first page is `1` and not `0` !

- The default number of item per page is `20`
You can change with setting this constant into your controller : `DEFAULT_NB_ITEMS_PAR_PAGE = 50`

- The default max number of item per page is `100`
You can change with setting this constant into your controller : `MAX_ITEMS_PAR_PAGE = 200`

### RenderErrorConcern

TODO

## Installation

Add this line to your application's Gemfile:

```ruby
gem "captive-api"
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install captive-api
```

## Contributing

Contribution directions go here.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
