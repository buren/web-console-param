# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'web_console_param/version'

Gem::Specification.new do |spec|
  spec.name          = 'web-console-param'
  spec.version       = WebConsoleParam::VERSION
  spec.authors       = ['Jacob Burenstam']
  spec.email         = ['burenstam@gmail.com']
  spec.summary       = %q{Open Rails web-console by adding ?web_console=1 to any page.}
  spec.description   = %q{Open web-console by adding ?web_console=1 to any page. You could implement this yourself in a couple of lines, but if you're really lazy.. go ahead and use this gem.}
  spec.homepage      = 'https://github.com/buren/web-console-param'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
