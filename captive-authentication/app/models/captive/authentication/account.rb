module Captive::Authentication
  class Account < ApplicationRecord
    devise :database_authenticatable,
           :registerable,
           :recoverable,
           :rememberable,
           :validatable,
           :confirmable,
           :trackable,
           :omniauthable

    def full_name
      "#{first_name.capitalize} #{last_name.upcase}"
    end
  end
end
