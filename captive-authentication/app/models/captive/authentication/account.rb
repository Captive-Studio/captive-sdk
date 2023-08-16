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

    validates :email, email: { mode: :strict, require_fqdn: true }

    def full_name
      "#{first_name.capitalize} #{last_name.upcase}"
    end

    def self.find_or_create(email:)
      find_by(email: email).presence || create(email: email)
    end
  end
end
