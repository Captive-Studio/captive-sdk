require 'devise'
require 'devise-i18n'
require 'email_validator'

module Captive
  module Authentication
    class Engine < ::Rails::Engine
      isolate_namespace Captive::Authentication

      config.generators do |g|
        g.test_framework :rspec
        g.fixture_replacement :factory_bot
        g.factory_bot dir: 'spec/factories'
      end
    end
  end
end
