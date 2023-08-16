module Captive::Authentication
  class AccountProvider < ApplicationRecord
    belongs_to :account

    validates :uid, uniqueness: { scope: :provider }

    def self.find_or_create_from_omniauth(email:, provider:, uid:, token:, token_expires_at: nil)
      account_provider =
        where(
          provider: provider,
          uid: uid
        ).first_or_initialize do |ap|
          account = Account.find_or_create(email: email)
          ap.account = account
        end
      account_provider.token = token
      account_provider.token_expires_at = token_expires_at
      account_provider.save
    end
  end
end
