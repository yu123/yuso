# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yuso/version"

Gem::Specification.new do |spec|
  spec.name          = "yuso"
  spec.version       = Yuso::VERSION
  spec.authors       = ["Okura Masafumi"]
  spec.email         = ["masafumi.o1988@gmail.com"]

  spec.summary       = %q{A library containing shipping fee data of three major shipping companies in Japan}
  spec.description   = %q{A library containing shipping fee data of three major shipping companies in Japan.}
  spec.homepage      = "https://github.com/okuramasafumi/yuso"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-collection_matchers", "~> 1.1"
  spec.add_development_dependency "pry"
end
