# frozen_string_literal: true

module Captive::Authentication
  module Login
    class Facebook < Base
      def initialize(token:, token_expires_at: nil)
        @token = token
        @token_expires_at = token_expires_at
        @data = recupere_information_depuis_facebook
        @uid = data["id"]
        @email = data["email"].presence || get_fake_email
      end

      def provider
        "facebook"
      end

      private

      # [External documentation](https://developers.facebook.com/docs/graph-api/overview/#me)
      def recupere_information_depuis_facebook
        HTTParty.get(
          "https://graph.facebook.com/me",
          query: {
            access_token: @token,
            fields: "email,name,id",
          }
        ).parsed_response
      end
    end
  end
end
