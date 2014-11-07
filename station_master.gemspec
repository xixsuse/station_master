# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'station_master'

Gem::Specification.new do |spec|
  spec.name          = "station_master"
  spec.version       = StationMaster::VERSION
  spec.authors       = ["Stefano Ordine"]
  spec.email         = ["stefano.ordine@gmail.com"]
  spec.summary       = "This gem provide an interface to an api from viaggiatreno.it public site."
  spec.description   = "This gem provide an interface to an api from viaggiatreno.it public site. This project exploits the api that the site uses to build up the front-end side, to retrieve real-time information on italian rail system and to provide an more convinient interface to that information."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "multi_json"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "webmock"
end