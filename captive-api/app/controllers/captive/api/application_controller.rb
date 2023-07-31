module Captive
  module API
    class ApplicationController < ActionController::API
      include ::API::PaginationConcern
      include ::API::RenderErrorConcern
    end
  end
end
