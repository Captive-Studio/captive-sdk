# app/controllers/concerns/sentry_context_concern.rb

# frozen_string_literal: true

module SentryContextConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_sentry_context

    def set_sentry_context
      set_user_on_sentry_context
      set_params_on_sentry_context
    end

    def set_user_on_sentry_context
      account =
        if defined?(current_account)
          current_account
        end
      return if account.blank?

      Sentry.set_user(id: account.id, email: account.email)
    end

    def set_params_on_sentry_context
      return if params.blank?

      # utilisation de `#to_unsafe_hash` car il faut transformer l'objet unpermitted params en hash
      Sentry.set_context('params', params.to_unsafe_hash)
    end
  end
end
