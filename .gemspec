require 'rake'

Gem::Specification.new do |spec|
  spec.name = 'grumpy_old_man'
  spec.version = '0.1.2'
  spec.license = 'MIT'
  spec.homepage = 'http://hopsoft.github.com/grumpy_old_man/'
  spec.summary = 'Asserts for RSpec'
  spec.description = <<-DESC
    Provides old school assert methods for your RSpec tests.
  DESC

  spec.authors = ['Nathan Hopkins']
  spec.email = ['natehop@gmail.com']

  spec.files = FileList['lib/**/*.rb', 'bin/*', '[A-Z]*', 'spec/**/*.rb'].to_a
end

