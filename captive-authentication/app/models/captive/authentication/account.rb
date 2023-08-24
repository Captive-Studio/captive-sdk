# {Account} is model responsible for storing account information.
#
# @!attribute id
#   @return [Integer] DO NOT USE THIS ID IN EXTERNE OF THIS GEM
#
# @!attribute uid
#   @return [UUID] ID of the {Patient} in UUID format.
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
  end
end
