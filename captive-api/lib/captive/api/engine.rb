module Captive
  module API
    class Engine < ::Rails::Engine
      isolate_namespace Captive::API
      config.generators.api_only = true
    end
  end
end
