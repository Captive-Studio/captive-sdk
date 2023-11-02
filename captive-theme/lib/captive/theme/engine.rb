require "rails"

module Captive
  module Theme
    class Engine < ::Rails::Engine
      # require "formtastic"
      # require "app/inputs/icon_file_input.rb"

      config.generators do |g|
        g.test_framework :rspec
      end
    end
  end
end
