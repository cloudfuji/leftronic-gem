# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "leftronic/version"

Gem::Specification.new do |s|
  s.name        = "leftronic"
  s.version     = Leftronic::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sean Grove"]
  s.email       = ["sean@bushi.do"]
  s.homepage    = "http://leftronic.com"
  s.summary     = %q{Idiomatic ruby gem to use Leftronic}
  s.description = %q{Leftronic is an amazing dashboard-as-a-service company, but I wanted to work with them in ruby, so I wrote this.}

  s.add_dependency "rest-client", ">=1.6.1"
  s.add_dependency "json",        ">=1.4.6"

  s.rubyforge_project = "leftronic"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
