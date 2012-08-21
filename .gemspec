require 'rake'

Gem::Specification.new do |spec|
  spec.name = 'grumpy_old_man'
  spec.version = '0.1.0'
  spec.license = 'MIT'
  spec.homepage = 'https://github.com/hopsoft/grumpy_old_man'
  spec.summary = 'Asserts for RSpec.'
  spec.description = <<-DESC
    Do you like RSpec's delcarative describe statements but hate its wonky DSL that monkey patches BasicObject?
    Do you want to write tests without learning all of RSpec's matchers and expectations?
    Do you prefer simple asserts in your test suite?
    Welcome home my friend, GrumpyOldMan is for you.
  DESC

  spec.authors = ['Nathan Hopkins']
  spec.email = ['natehop@gmail.com']

  spec.files = FileList['lib/**/*.rb', 'bin/*', '[A-Z]*', 'spec/**/*.rb'].to_a
end

