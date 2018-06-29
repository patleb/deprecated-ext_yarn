$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ext_yarn/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ext_yarn"
  s.version     = ExtYarn::VERSION
  s.authors     = ["Patrice Lebel"]
  s.email       = ["patleb@users.noreply.github.com"]
  s.homepage    = "https://github.com/patleb/ext_yarn"
  s.summary     = "ExtYarn"
  s.description = "ExtYarn"
  s.license     = "MIT"

  s.files = `git ls-files -z`.split("\x0")

  s.add_development_dependency "sprockets-rails"
  s.add_development_dependency "sprockets", "~> 3.7", ">= 3.7.2"
  s.add_development_dependency "railties", "~> 5.1.0"
end
