# frozen_string_literal: true

module Api
  ##
  # Permet de catcher des erreurs pour rendre une page d'erreur en json
  module RenderErrorConcern
    extend ActiveSupport::Concern

    included do
      rescue_from ActiveRecord::RecordNotFound, with: :not_found
      rescue_from ActionController::ParameterMissing, with: :handle_parameter_missing

      rescue_from CanCan::AccessDenied do |exception|
        render_error_from_exception(exception, status: :forbidden)
      end

      protected

      def render_error_from_object(
        object,
        status: :unprocessable_entity,
        message: 'Erreur de validation'
      )
        errors = object.errors.messages
        Rails.logger.error("Impossible de sauvagarder l'objet #{object.class} : #{errors}")
        render_error(
          message: message, errors: errors, status: status
        )
      end

      def render_error_from_exception(exception, status:, message: nil)
        render_error(
          message: exception.message, errors: exception.message, status: status
        )
      end

      def handle_parameter_missing(exception)
        render_error_from_exception(exception, status: :bad_request)
      end

      def not_found(exception)
        render_error(message: "#{exception.model} not found", status: :not_found)
      end

      def render_error(message:, status:, errors: [], code: nil)
        code ||= status.to_s
        render json: {
                 message: message,
                 errors: errors,
                 code: code,
               },
               status: status
      end
    end
  end
end
