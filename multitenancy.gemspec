$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'multitenancy/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'multitenancy'
  s.version     = Multitenancy::VERSION
  s.authors     = ["Mohammad AbuShady"]
  s.email       = ["coalwater5@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Multitenancy."
  s.description = "TODO: Description of Multitenancy."
  s.license     = "MIT"

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 4.2.1'
  s.add_dependency 'haml-rails'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '~> 3.0'
  s.add_development_dependency 'capybara', '~> 2.3'
  s.add_development_dependency 'byebug'
end
