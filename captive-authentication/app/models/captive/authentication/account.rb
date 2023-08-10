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
  end
end
