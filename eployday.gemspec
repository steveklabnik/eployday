# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "eployday/version"

Gem::Specification.new do |s|
  s.name        = "eployday"
  s.version     = Eployday::VERSION
  s.authors     = ["Steve Klabnik"]
  s.email       = ["steve@steveklabnik.com"]
  s.homepage    = "http://github.com/steveklabnik/eployday"
  s.summary     = %q{An IRC bot to deploy stuff.}
  s.description = %q{An IRC bot that allows whitelisted users to deploy your code to production.}

  s.rubyforge_project = "eployday"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_runtime_dependency "cinch"
end
