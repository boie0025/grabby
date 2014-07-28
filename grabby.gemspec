# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grabby/version'

Gem::Specification.new do |spec|
  spec.name          = "grabby"
  spec.version       = Grabby::VERSION
  spec.authors       = ["Nic Boie"]
  spec.email         = ["nic@webvolta.com"]
  spec.description   = %q{Grab arbitrariy elements from an array expressively}
  spec.summary       = %q{This gem provides an interface to selecting elements based on English rather than with cryptic looking loops.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "numbers_and_words", "~> 0.10"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
