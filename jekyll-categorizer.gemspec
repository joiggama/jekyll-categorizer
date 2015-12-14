# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/categorizer/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-categorizer'
  spec.version       = Jekyll::Categorizer::VERSION
  spec.authors       = ['Ignacio Galindo']
  spec.email         = ['joiggama@gmail.com']

  spec.summary       = %q{ Generate simple category index pages with ease. }
  spec.description   = %q{ A Jekyll plugin to generate custom category index pages. Bring your own template. }
  spec.homepage      = 'https://github.com/joiggama/jekyll-categorizer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']


  spec.add_development_dependency 'bundler',    '~> 1.9'
  spec.add_development_dependency 'rake',       '~> 10.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.2.0'

  spec.add_runtime_dependency     'jekyll', '>= 2.5.3'
end
