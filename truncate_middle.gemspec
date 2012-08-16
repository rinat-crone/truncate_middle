# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "truncate_middle/version"

Gem::Specification.new do |s|
  s.name        = "truncate_middle"
  s.version     = TruncateMiddle::VERSION
  s.authors     = ["Rinat Shaykhutdinov"]
  s.email       = ["rinat.crone@gmail.com"]
  s.homepage    = "http://github.com/rinat-crone/truncate_middle"
  s.summary     = %q{Provides truncate_middle method for string to cut middle part of text.}
  s.description = %q{Provides truncate_middle method for string to cut middle part of text.}

  s.rubyforge_project = "truncate_middle"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
