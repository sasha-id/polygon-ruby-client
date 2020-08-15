# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'polygon/version'

Gem::Specification.new do |s|
  s.name = 'polygon-ruby-client'
  s.bindir = 'bin'
  s.version = Polygon::VERSION
  s.authors = ['Alex Yussupov']
  s.email = 'alex@klepa.co'
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.required_ruby_version = '>= 2.3.0'
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']
  s.homepage = 'http://github.com/alex-klepa/polygon-ruby-client'
  s.licenses = ['MIT']
  s.summary = 'Polygon API.'
  s.add_dependency 'faraday', '>= 1.00'
  s.add_dependency 'faraday_middleware'
  s.add_dependency 'oj'
  s.add_development_dependency 'rake', '~> 10'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop', '0.72.0'
end
