# frozen_string_literal: true

module Api
  ##
  # Défini le nombre max d'items par page à 100
  # `MAX_ITEMS_PAR_PAGE = 100`
  #
  # Défini le nombre par défaut d'items par page à 20
  # DEFAULT_NB_ITEMS_PAR_PAGE = 20
  module PaginationConcern
    extend ActiveSupport::Concern

    included do |base|
      base.const_set :MAX_ITEMS_PAR_PAGE, 100
      base.const_set :DEFAULT_NB_ITEMS_PAR_PAGE, 20

      def pagination
        @pagination ||=
          begin
            par_page = (params[:per_page] || self.class::DEFAULT_NB_ITEMS_PAR_PAGE).to_i
            par_page = self.class::MAX_ITEMS_PAR_PAGE if par_page > self.class::MAX_ITEMS_PAR_PAGE
            page = (params[:page] || 1).to_i
            { page: page, per_page: par_page }
          end
      end
    end
  end
end
