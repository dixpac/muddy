$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "muddy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "muddy"
  s.version     = Muddy::VERSION
  s.authors     = ["dixpac"]
  s.email       = ["dino.onex@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Muddy."
  s.description = "TODO: Description of Muddy."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.0"
  s.add_dependency "activesupport", ">= 4.0.0"
  s.add_dependency "actionpack", ">= 4.0.0"

  s.add_development_dependency "sqlite3"
end
