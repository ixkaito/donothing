# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'donothing/version'

Gem::Specification.new do |spec|
  spec.name          = "donothing"
  spec.version       = DoNothing::VERSION
  spec.authors       = ["Kite"]
  spec.email         = ["ixkaito@gmail.com"]

  spec.summary       = %q{Do nothing.}
  spec.description   = %q{This Gem does nothing for you. You can only install or uninstall it.}
  spec.homepage      = "https://github.com/ixkaito/donothing"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
