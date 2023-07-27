Rails.application.routes.draw do
  mount Captive::Api::Engine => "/captive-api"
end
