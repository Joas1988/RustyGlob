# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'RustyGlob/version'

Gem::Specification.new do |spec|
  spec.name = "RustyGlob"
  spec.version = RustyGlob::VERSION
  spec.authors = ["Jaroslav Böhmer"]
  spec.email = ["joas1988@gmail.com"]

  spec.summary = %q{Dir.glob in rust}
  spec.description = %q{Dir.glob in Win is to slow to keep living}
  spec.homepage = ""
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["Rakefile"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency 'thermite', '~> 0'

end
