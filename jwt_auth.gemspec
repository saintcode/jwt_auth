$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jwt_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jwt_auth"
  s.version     = JwtAuth::VERSION
  s.authors     = ["Vadim Evseev"]
  s.email       = ["v.evseev@smcs.com.ua"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of JwtAuth."
  s.description = "TODO: Description of JwtAuth."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.1"

  s.add_development_dependency "sqlite3"
end
