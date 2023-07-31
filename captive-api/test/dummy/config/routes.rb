Rails.application.routes.draw do
  mount Captive::API::Engine => "/captive-api"
end
