module Captive::Authentication
  class AccountProvider < ApplicationRecord
    belongs_to :account

    validates :uid, uniqueness: { scope: :provider }
  end
end
