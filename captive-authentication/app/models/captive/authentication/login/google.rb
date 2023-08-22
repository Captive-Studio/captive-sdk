# frozen_string_literal: true

module Captive::Authentication
  module Login
    class Google < Base
      def initialize(token:, token_expires_at: nil)
        @token = token
        @token_expires_at = token_expires_at
        @token_infos = recupere_information_depuis_google
        @email = @token_infos["email"]
        @uid = @token_infos["sub"]
        @confirmed_at = Time.current
      end

      def provider
        "google"
      end

      private

      # [External documentation](https://developers.google.com/identity/sign-in/web/backend-auth)
      def recupere_information_depuis_google
        url = "https://oauth2.googleapis.com/tokeninfo?id_token=#{@token}"
        HTTParty.get(url).parsed_response
      end
    end
  end
end
