module Captive
  module Authentication
    class Engine < ::Rails::Engine
      isolate_namespace Captive::Authentication
    end
  end
end
