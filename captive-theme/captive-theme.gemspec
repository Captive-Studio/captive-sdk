# frozen_string_literal: true

version = File.read(File.expand_path("../CAPTIVE_SDK_VERSION", __dir__)).strip

Gem::Specification.new do |spec|
  spec.name        = "captive-theme"
  spec.version     = version
  spec.authors     = ["Captive", "Clément Prod'homme"]
  spec.email       = ["clement.prod-homme@captive.fr"]
  spec.homepage    = "https://captive.fr/"
  spec.summary     = "Theme captive with font, design, .."
  spec.description = "Theme captive with font, design, .."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Captive-Studio/captive-sdk/tree/v#{version}/captive-theme"
  # spec.metadata["changelog_uri"] = "https://github.com/Captive-Studio/captive-sdk/blob/v#{version}/captive-theme/CHANGELOG.md"

  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
    end

  # spec.add_dependency "rails", ">= 7.1.0.alpha"
end
