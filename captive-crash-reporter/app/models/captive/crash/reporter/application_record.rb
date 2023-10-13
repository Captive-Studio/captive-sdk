module Captive
  module Crash
    module Reporter
      class ApplicationRecord < ActiveRecord::Base
        self.abstract_class = true
      end
    end
  end
end
