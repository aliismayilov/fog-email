# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fog/email/version'

Gem::Specification.new do |spec|
  spec.name          = "fog-email"
  spec.version       = Fog::Email::VERSION
  spec.authors       = ["Ali Ismayilov"]
  spec.email         = ["ali@ismailov.info"]
  spec.summary       = %q{Module for the `fog` gem to support popular email service providers.}
  spec.description   = %q{This gem aims to abstract usage of popular email service providers
                          such as Sendgrid, Mandril, Amazon SES and etc.}
  spec.homepage      = "https://github.com/aliismayilov/fog-email"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
