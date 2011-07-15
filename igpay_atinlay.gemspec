# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "igpay_atinlay/version"

Gem::Specification.new do |s|
  s.name        = "igpay_atinlay"
  s.version     = IgpayAtinlay::VERSION
  s.authors     = ["Michael Wynholds"]
  s.email       = ["mike@carbonfive.com"]
  s.homepage    = ""
  s.summary     = %q{Adds String.to_pig_latin}
  s.description = %q{Pig Latin converter mixed in to String}

  s.rubyforge_project = "igpay_atinlay"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
