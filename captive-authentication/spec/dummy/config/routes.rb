Rails.application.routes.draw do
  mount Captive::Authentication::Engine => "/captive-authentication"
end
