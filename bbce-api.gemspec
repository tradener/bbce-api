# -*- encoding: utf-8 -*-

=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "bbce-api/version"

Gem::Specification.new do |s|
  s.name        = "bbce-api"
  s.version     = BbceApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tradener"]
  s.email       = [""]
  s.homepage    = "https://github.com/tradener/bbce-api"
  s.summary     = "BBCE Bus API Ruby Gem"
  s.description = "Endpoint's specifications for routes allowed for direct client usage."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
