# frozen_string_literal: true

version = File.read(File.expand_path("../CAPTIVE_SDK_VERSION", __dir__)).strip

Gem::Specification.new do |spec|
  spec.name        = "captive-authentication"
  spec.version     = version
  spec.authors     = ["Captive", "Clément Prod'homme"]
  spec.email       = ["clement.prod-homme@captive.fr"]
  spec.homepage    = "https://www.captive.fr/"
  spec.summary     = "Devise authentication with email confirmations, password resets, and omniauth solutions"
  spec.description = "Devise authentication with email confirmations, password resets, and omniauth solutions"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Captive-Studio/captive-sdk/tree/v#{version}/captive-authentication"
  # spec.metadata["changelog_uri"] = "https://github.com/Captive-Studio/captive-sdk/blob/v#{version}/captive-authentication/CHANGELOG.md"

  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
    end

  spec.add_dependency "rails", ">= 7.0.0"
  spec.add_dependency "devise", "~> 4.9.2"
  spec.add_dependency "devise-i18n", "~> 1.11.0"
  spec.add_dependency "omniauth", "~> 2.1.1"

  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "shoulda-matchers", "~> 5.0"
  spec.add_development_dependency "factory_bot_rails", "~> 6.2"
end
