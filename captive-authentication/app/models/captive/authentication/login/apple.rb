# frozen_string_literal: true

require "jwt"

module Captive::Authentication
  module Login
    class Apple < Base
      class Erreur < StandardError
      end

      def initialize(token:, token_expires_at: nil)
        @token = token
        @token_expires_at = token_expires_at
        configure_cle
        encode_tokens
        donnees_apple = recupere_donnees_depuis_apple
        raise Apple::Erreur if donnees_apple.blank?

        @token_infos = donnees_apple.parsed_response
        @data = decode_donnees(donnees_apple)
        @email = data["email"]
        @uid = data["sub"]
      end

      def provider
        "apple"
      end

      private

      def decode_donnees(donnees_apple)
        decode_token = JWT.decode donnees_apple.parsed_response["id_token"], nil, false
        decode_token.first
      end

      # [External documentation](https://developer.apple.com/documentation/sign_in_with_apple/generate_and_validate_tokens)
      def recupere_donnees_depuis_apple
        reponse_apple_id_serveur = HTTParty.post(
          "https://appleid.apple.com/auth/token",
          query: {
            client_id: ENV.fetch("APPLE_CLIENT_ID", nil),
            client_secret: @token,
            grant_type: "authorization_code",
            code: @authorization_code,
            redirect_uri: ENV.fetch(
              "APPLE_REDIRECT_URI",
              nil
            ),
          }
        )
        if reponse_apple_id_serveur.code == 200 &&
            reponse_apple_id_serveur.parsed_response["id_token"].present?
          reponse_apple_id_serveur
        end
      end

      def configure_payload
        iat = Time.now.to_i
        exp = iat + (24.hours.to_i * 180)
        {
          iss: ENV.fetch("APPLE_TEAM_ID", nil),
          iat: iat,
          exp: exp,
          aud: "https://appleid.apple.com",
          sub: ENV.fetch("APPLE_CLIENT_ID", nil),
        }
      end

      def encode_tokens
        payload = configure_payload
        @token = JWT.encode(payload, @cle, "ES256", { kid: ENV.fetch("APPLE_KEY", nil) })
      end

      def configure_cle
        @cle = OpenSSL::PKey::EC.new(ENV.fetch("APPLE_PEM", nil))
      end
    end
  end
end
