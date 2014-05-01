# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "atlas2ipynb"
  spec.version       = "0.0.9"
  spec.authors       = ["Andrew Odewahn"]
  spec.email         = ["odewahn@oreilly.com"]
  spec.summary       = %q{Converts Atlas HTML build into iPythyon Notebooks.}
  spec.description   = %q{Converts all ch*.html files from Atlas into iPythyon Notebooks.}
  spec.homepage      = "https://github.com/odewahn/atlas2ipynb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency "nokogiri", "~> 1.6.1"
  spec.add_dependency "json", "~> 1.8.1"
  spec.add_dependency "activesupport", "~> 3.0.0"
  spec.add_dependency "i18n", "~> 0.6.9"
  
end
