# frozen_string_literal: true

module Captive::Authentication
  module Login
    class Base
      attr_reader :email, :uid, :data, :token, :token_expires_at, :token_infos

      def find_or_create
        Captive::Authentication::AccountProvider.find_or_create_from_omniauth(
          email: email,
          provider: provider,
          uid: uid,
          token: token,
          token_expires_at: token_expires_at,
          token_infos: token_infos
        )
      end

      def provider
        raise "No provider"
      end

      private

      def get_fake_email
        "#{uid}@#{provider}.com"
      end
    end
  end
end
