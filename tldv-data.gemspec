# frozen_string_literal: true

require_relative "lib/tldv/data"

Gem::Specification.new do |spec|
  spec.name = "tldv-data"
  spec.version = TLDv::Data::VERSION
  spec.authors = ["Georg Gadinger"]
  spec.email = ["nilsding@nilsding.org"]

  spec.summary = "TLD data for TLDv"
  spec.description = "contains TLD data from IANA"
  spec.homepage = "https://github.com/nilsding/tldv-data"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nilsding/tldv-data"
  spec.metadata["changelog_uri"] = "https://github.com/nilsding/tldv-data/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "faraday", "~> 2.6"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata["rubygems_mfa_required"] = "true"
end
