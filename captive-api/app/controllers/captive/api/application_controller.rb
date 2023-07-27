module Captive
  module Api
    class ApplicationController < ActionController::API
      include ::Api::PaginationConcern
      include ::Api::RenderErrorConcern
    end
  end
end
