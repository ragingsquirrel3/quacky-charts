# -*- encoding: utf-8 -*-
require File.expand_path('../lib/quacky/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Travis Sheppard"]
  gem.email         = ["travissheppard.1988@gmail.com"]
  gem.description   = %q{A Rails Charting Gem}
  gem.summary       = %q{Configure Charts in Ruby; QuackyCharts builds them with JS tools.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "quacky-charts"
  gem.require_paths = ["lib"]
  gem.version       = QuackyCharts::VERSION
end
