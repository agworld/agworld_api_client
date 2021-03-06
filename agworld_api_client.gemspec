# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

require 'agworld_api/version'

Gem::Specification.new do |spec|
  spec.name        = 'agworld_api_client'
  spec.version     = AgworldApi::VERSION
  spec.authors     = ['AgworldApi Developers']
  spec.email       = ['support@agworld.co']
  spec.homepage    = 'http://www.agworld.co/'
  spec.summary     = %q(Ruby bindings for the AgworldApi API)
  spec.description = %Q(AgworldApi is a farm information management system. See https://us.agworld.co/user_api/v1/docs for more details on the api docs.)
  spec.license     = 'MIT'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'json_api_client', '~> 1.1.0'
  spec.required_ruby_version = '>= 2.1.0'
end
