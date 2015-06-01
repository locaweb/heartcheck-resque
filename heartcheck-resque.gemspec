# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heartcheck/resque/version'

Gem::Specification.new do |spec|
  spec.name          = "heartcheck-resque"
  spec.version       = Heartcheck::Resque::VERSION
  spec.authors       = ["Locaweb"]
  spec.email         = ["desenvolvedores@locaweb.com.br"]
  spec.summary       = 'A resque checker'
  spec.description   = 'Plugin to check resque connection/failures'
  spec.homepage      = "http://developer.locaweb.com.br"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.1.0', '>= 3.1.0'
  spec.add_development_dependency 'rubocop', '~> 0.27.0', '>= 0.27.1'
  spec.add_development_dependency 'pry-nav', '~> 0.2.0', '>= 0.2.4'

  spec.add_dependency 'resque', '~> 1.24.0'
end
