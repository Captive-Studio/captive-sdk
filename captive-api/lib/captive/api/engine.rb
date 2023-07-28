module Captive
  module Api
    class Engine < ::Rails::Engine
      isolate_namespace Captive::Api
      config.generators.api_only = true
    end
  end
end
