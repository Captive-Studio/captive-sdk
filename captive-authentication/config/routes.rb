Captive::Authentication::Engine.routes.draw do
  devise_for :accounts, class_name: "Captive::Authentication::Account"
end
