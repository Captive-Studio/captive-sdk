# frozen_string_literal: true

module Captive
  module Admin
    class Error < StandardError; end

    # Your code goes here...
    module Rails
      class Engine < ::Rails::Engine
      end
    end
  end
end
