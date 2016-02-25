$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "minions_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "minions_rails"
  s.version     = MinionsRails::VERSION
  s.authors     = ["Michael Chan"]
  s.email       = ["mijoch@gmail.com"]
  s.homepage    = "https://github.com/chantastic/minions_rails"
  s.summary     = "minions.css for Rails"
  s.description = "minions.css for Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "sqlite3"
end
