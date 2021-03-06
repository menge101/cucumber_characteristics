# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cucumber_characteristics/version'

Gem::Specification.new do |spec|
  spec.name          = "cucumber_characteristics"
  spec.version       = CucumberCharacteristics::VERSION
  spec.authors       = ["Stuart Ingram"]
  spec.email         = ["stuart.ingram@gmail.com"]
  spec.description   = %q{Gem to profile cucumber steps and features}
  spec.summary       = %q{Gem to profile cucumber steps and features}
  spec.homepage      = "https://github.com/singram/cucumber_characteristics"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "haml"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency 'simplecov',   '0.8.2'
  spec.add_development_dependency 'rspec',       '2.14'
  spec.add_development_dependency 'cucumber',       '1.3.5'
end
