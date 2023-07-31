# frozen_string_literal: true

version = File.read(File.expand_path("../CAPTIVE_SDK_VERSION", __dir__)).strip

Gem::Specification.new do |spec|
  spec.name = "captive-admin"
  spec.version = version
  spec.authors = ['Captive', "Stéphane Hanser"]
  spec.email = ["shanser@captive.fr"]

  spec.summary = "Un thème pour ActiveAdmin aux couleurs de Captive."
  spec.description = "Un thème pour ActiveAdmin aux couleurs de Captive."
  spec.homepage = "https://captive.fr/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Captive-Studio/captive-sdk/tree/v#{version}/captive-admin"
  # spec.metadata["changelog_uri"] = "https://github.com/Captive-Studio/captive-sdk/blob/v#{version}/captive-admin/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
    end
  # spec.bindir = "exe"
  # spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  # spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "rails", ">= 7.0.0"
  spec.add_dependency "captive-theme", version

  spec.add_development_dependency "rspec-rails"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
