# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'numbertotext/version'

Gem::Specification.new do |spec|
  spec.name          = 'numbertotext-ruby'
  spec.version       = NumberToText::VERSION
  spec.authors       = ['Edem Kumodzi']
  spec.email         = ['edem@kumodzi.com']
  spec.summary       = 'A simple library for converting numbers to their text equivalent (e.g. 1000 = One Thousand)'
  spec.description   = 'A simple library for converting numbers to their text equivalent (e.g. 1000 = One Thousand)'
  spec.homepage      = 'https://github.com/edemkumodzi/numbertotext-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9.3'
end