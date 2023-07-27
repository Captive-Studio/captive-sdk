# frozen_string_literal: true

version = File.read(File.expand_path("CAPTIVE_SDK_VERSION", __dir__)).strip

Gem::Specification.new do |spec|
  spec.name        = "captive-sdk"
  spec.version     = version
  spec.authors     = ["Captive", "Clément Prod'homme"]
  spec.email       = ["clement.prod-homme@captive.fr"]
  spec.homepage    = "https://captive.fr/"
  spec.summary     = "Captive SDK pour construire une App Rails rapidement"
  spec.description = "Captive SDK pour construire une App Rails rapidement"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Captive-Studio/captive-sdk/tree/v#{version}"
  # spec.metadata["changelog_uri"] = "https://github.com/Captive-Studio/captive-sdk/blob/v#{version}/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  # spec.add_dependency "rails", ">= 7.1.0.alpha"
  spec.add_dependency "captive-admin", version
  spec.add_dependency "captive-api", version
  spec.add_dependency "captive-theme", version
end
