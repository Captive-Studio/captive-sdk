module Captive
  module Crash
    module Reporter
      class Engine < ::Rails::Engine
        isolate_namespace Captive::Crash::Reporter
      end
    end
  end
end
