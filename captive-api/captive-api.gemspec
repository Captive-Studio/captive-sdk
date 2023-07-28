# frozen_string_literal: true

version = File.read(File.expand_path("../CAPTIVE_SDK_VERSION", __dir__)).strip

Gem::Specification.new do |spec|
  spec.name        = "captive-api"
  spec.version     = version
  spec.authors     = ['Captive', "Clément Prod'homme"]
  spec.email       = ["clement.prod-homme@captive.fr"]
  spec.homepage    = "https://www.captive.fr/"
  spec.summary     = "Code commun des API de Captive"
  spec.description = "Code commun des API de Captive"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Captive-Studio/captive-sdk/tree/v#{version}/captive-api"
  # spec.metadata["changelog_uri"] = "https://github.com/Captive-Studio/captive-sdk/blob/v#{version}/captive-api/CHANGELOG.md"

  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
    end

  spec.add_dependency "rails", ">= 7.0.0"
  spec.add_dependency "cancancan", ">= 3.5.0"
  spec.add_dependency "oj", ">= 3.15.0"
end
