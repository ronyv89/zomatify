# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zomatify/version'

Gem::Specification.new do |spec|
  spec.name          = 'zomatify'
  spec.version       = Zomatify::VERSION
  spec.authors       = ['Rony Varghese']
  spec.email         = ['ronyv250289@gmail.com']

  spec.summary       = %q{Access the latest Zomato API}
  spec.description   = %q{Client library for Zomato API}
  spec.homepage      = "https://github.com/ronyv89/zomatify"
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'
  spec.add_dependency 'hashie'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rb-inotify'
  spec.add_development_dependency 'rb-fsevent', '~> 0.9'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'metric_abc'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'ci_reporter'
  spec.add_development_dependency 'simplecov-rcov'
  spec.add_development_dependency 'rdiscount'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'guard-spork'
  spec.add_development_dependency 'rspec_multi_matchers'
end
