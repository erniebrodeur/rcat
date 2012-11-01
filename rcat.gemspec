# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rcat/version'

Gem::Specification.new do |gem|
  gem.name          = "rcat"
  gem.version       = Rcat::VERSION
  gem.authors       = ["Ernie Brodeur"]
  gem.email         = ["ebrodeur@ujami.net"]
  gem.description   = "A colorized cat command using ruby."
  gem.summary       = "This gem provides a binary that cat's syntax colorized code to the console.
"
  gem.homepage      = "https://www.github.com/erniebrodeur/rcat"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency 'bini'
  gem.add_runtime_dependency 'pry'
  gem.add_runtime_dependency 'pry-theme'
end
