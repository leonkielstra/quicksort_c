# frozen_string_literal: true

require_relative "lib/quicksort_c/version"

require "rake"

Gem::Specification.new do |spec|
  spec.name          = "quicksort_c"
  spec.version       = QuicksortC::VERSION
  spec.authors       = ["Leon Kielstra"]
  spec.email         = ["leonkielstra@gmail.com"]

  spec.summary       = "This gem introduces a quicksort implementation in C."
  spec.description   = "This gem introduces a quicksort implementation in C. It also introduces " \
                       "a reference implementation in Ruby. Just for some benchmarking fun."
  spec.homepage      = "https://github.com/leonkielstra/quicksort_c#readme"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/leonkielstra/quicksort_c"
  spec.metadata["changelog_uri"] = "https://github.com/leonkielstra/haps/blob/#{QuicksortC::VERSION}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["{lib,ext}/**/*", "LICENSE.txt", "Rakefile", "README.md"].select { |f| File.file?(f) }

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-compiler"

  spec.extensions = FileList["ext/**/extconf.rb"]

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
