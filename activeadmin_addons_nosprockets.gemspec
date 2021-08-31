# coding: utf-8
# rubocop:disable Metrics/LineLength
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activeadmin_addons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activeadmin_addons_nosprockets"
  s.version     = ActiveadminAddons::VERSION
  s.authors     = ["Platanus", "Julio García", "Emilio Blanco", "Leandro Segovia"]
  s.email       = ["rubygems@platan.us", "julioggonz@gmail.com", "emilioeduardob@gmail.com", "ldlsegovia@gmail.com"]
  s.homepage    = "https://github.com/platanus/activeadmin_addons"
  s.summary     = "Fork of activeadmin_addons that doesn't depend on/support Sprockets"
  s.description = "Fork of activeadmin_addons that doesn't depend on/support Sprockets"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "require_all"

  s.add_development_dependency "aasm"
  s.add_development_dependency "capybara-selenium"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "enumerize", "~> 2.0"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "paperclip"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "puma"

  RAILS_VERSION_SPECIFIER = [">= 5.2.4.1", "< 7"].freeze
  # gem "activemodel", *RAILS_VERSION_SPECIFIER
  # gem "activejob", *RAILS_VERSION_SPECIFIER
  gem "activerecord", *RAILS_VERSION_SPECIFIER
  # gem "activestorage", *RAILS_VERSION_SPECIFIER
  gem "actionpack", *RAILS_VERSION_SPECIFIER # ActionController
  gem "actionview", *RAILS_VERSION_SPECIFIER
  # gem "actionmailer", *RAILS_VERSION_SPECIFIER
  # gem "actionmailbox", *RAILS_VERSION_SPECIFIER
  # gem "actiontext", *RAILS_VERSION_SPECIFIER
  # gem "actioncable", *RAILS_VERSION_SPECIFIER
  gem "activesupport", *RAILS_VERSION_SPECIFIER
  gem "railties", *RAILS_VERSION_SPECIFIER

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rspec_junit_formatter"
  s.add_development_dependency "rubocop", "~> 0.65.0"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "webdrivers"
end
