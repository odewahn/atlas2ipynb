# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'atlas2ipynb/version'

Gem::Specification.new do |spec|
  spec.name          = "atlas2ipynb"
  spec.version       = Atlas2ipynb::VERSION
  spec.authors       = ["Andrew Odewahn"]
  spec.email         = ["odewahn@oreilly.com"]
  spec.summary       = %q{Converts Atlas HTML build into iPythyon Notebooks.}
  spec.description   = %q{Converts Atlas HTML build into iPythyon Notebooks.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency "nokogiri"
  spec.add_dependency "json"
  spec.add_dependency "active_support"
  
end
