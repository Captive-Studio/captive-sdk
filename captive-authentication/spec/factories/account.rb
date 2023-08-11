# frozen_string_literal: true

FactoryBot.define do
  factory :account, class: Captive::Authentication::Account do
    sequence(:email) do |n|
      "email-#{n}@exemple.fr"
    end
    password { "password" }
  end

end
