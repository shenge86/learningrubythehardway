# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "NAME"
  spec.version       = '1.0'
  spec.authors       = ["Shen Ge"]
  spec.email         = ["shenge86@gmail.com"]
  spec.summary       = %q{Demo project.}
  spec.description   = %q{Demo project to practice Ruby.}
  spec.homepage      = "http://www.shenge.us"
  spec.license       = "Creative Commons"

  spec.files         = ['lib/NAME.rb']
  spec.executables   = ['bin/NAME']
  spec.test_files    = ['tests/test_NAME.rb']
  spec.require_paths = ["lib"]
end