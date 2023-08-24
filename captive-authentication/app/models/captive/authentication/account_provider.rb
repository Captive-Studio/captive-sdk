# {AccountProvider} is model responsible for storing provider information for one Account.
#
# @!attribute token_infos
#   @return [Text] Response API when we check the token with provider
#
module Captive::Authentication
  class AccountProvider < ApplicationRecord
    belongs_to :account

    validates :uid, uniqueness: { scope: :provider }

    def self.find_or_create_from_omniauth(
      email:, provider:, uid:, token:, token_expires_at: nil, token_infos: nil, confirmed_at: nil
    )
      account_provider =
        where(provider: provider, uid: uid).first_or_initialize do |ap|
          account =
            Account.find_or_create_by(email: email) do |ac|
              ac.confirmed_at = confirmed_at
            end
          ap.account = account
        end
      account_provider.token = token
      account_provider.token_expires_at = token_expires_at
      account_provider.token_infos = token_infos
      account_provider.save
    end
  end
end
