Rails.application.routes.draw do
  mount Captive::Crash::Reporter::Engine => "/captive-crash-reporter"
end
