require "captive/crash/reporter/version"
require "captive/crash/reporter/engine"

module Captive
  module Crash
    module Reporter
      ActionController::Base.class_eval { include SentryContextConcern }

      # Your code goes here...
    end
  end
end
