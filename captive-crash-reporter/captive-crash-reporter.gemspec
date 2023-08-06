# frozen_string_literal: true

version = File.read(File.expand_path("../CAPTIVE_SDK_VERSION", __dir__)).strip

Gem::Specification.new do |spec|
  spec.name        = "captive-crash-reporter"
  spec.version     = version
  spec.authors     = ["Captive", "Clément Prod'homme"]
  spec.email       = ["clement.prod-homme@captive.fr"]
  spec.homepage    = "https://www.captive.fr/"
  spec.summary     = "Installation rapide d'un crash reporter"
  spec.description = "Installation complète et rapide de Sentry"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Captive-Studio/captive-sdk/tree/v#{version}/captive-crash-reporter"
  # spec.metadata["changelog_uri"] = "https://github.com/Captive-Studio/captive-sdk/blob/v#{version}/captive-crash-reporter/CHANGELOG.md"

  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
    end

  spec.add_dependency "sentry-ruby", ">= 5.10.0"
  spec.add_dependency "sentry-rails", ">= 5.10.0"
  spec.add_dependency "sentry-sidekiq", ">= 5.10.0"
end
