# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'karafka/testing/version'

Gem::Specification.new do |spec|
  spec.name          = 'karafka-testing'
  spec.platform      = Gem::Platform::RUBY
  spec.version       = Karafka::Testing::VERSION
  spec.authors       = ['Maciej Mensfeld']
  spec.email         = %w[maciej@mensfeld.pl]
  spec.summary       = 'Library which provides helpers for easier Karafka consumers tests'
  spec.description   = 'Library which provides helpers for easier Karafka consumers tests'
  spec.homepage      = 'https://github.com/karafka/testing'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]
end
