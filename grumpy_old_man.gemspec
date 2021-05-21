# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "grumpy_old_man/version"

Gem::Specification.new do |gem|
  gem.name = "grumpy_old_man"
  gem.version = GrumpyOldMan::VERSION
  gem.authors = ["Nathan Hopkins"]
  gem.email = ["natehop@gmail.com"]
  gem.description = "Asserts for RSpec"
  gem.summary = "Asserts for RSpec"
  gem.homepage = "https://github.com/hopsoft/grumpy_old_man"
  gem.license = "MIT"

  gem.files = Dir["lib/**/*.rb", "bin/*", "[A-Z].*"]
  gem.test_files = Dir["spec/**/*.rb"]
  gem.require_paths = ["lib"]

  gem.add_dependency "rspec"

  gem.add_development_dependency "bundler", ">= 2.0"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "standard"
  gem.add_development_dependency "magic_frozen_string_literal"
end
