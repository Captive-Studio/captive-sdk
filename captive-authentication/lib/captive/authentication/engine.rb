module Captive
  module Authentication
    class Engine < ::Rails::Engine
      isolate_namespace Captive::Authentication

      config.generators do |g|
        g.test_framework :rspec
      end
    end
  end
end
