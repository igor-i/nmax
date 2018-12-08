# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nmax/version'

Gem::Specification.new do |spec|
  spec.name          = 'nmax'
  spec.version       = Nmax::VERSION
  spec.authors       = ['igor-i']
  spec.email         = ['inkovskiy@gmail.com']

  spec.summary       = 'This is a script - NMax.'
  spec.description   = 'The script reads text data from the incoming stream and outputs n largest integers.'
  spec.homepage      = 'https://github.com/igor-i/nmax'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.11'
  spec.add_development_dependency 'rake', '~> 12.3'
end
