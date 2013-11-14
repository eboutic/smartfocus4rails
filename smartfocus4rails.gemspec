$LOAD_PATH.unshift 'lib'
require 'smartfocus4rails/version'

Gem::Specification.new do |s|
  s.name = "smartfocus4rails"
  s.summary = "Smartfocus (ex Emailvision) library for Ruby on Rails"
  s.description = "Manage Smartfocus campaigns and messages from your rails application"
  s.version = Smartfocus4rails::Version
  s.date = Time.now.strftime('%Y-%m-%d')
  s.license = 'MIT'

  s.files = Dir["{app,lib,config}/**/*"] + ["LICENSE", "Rakefile", "Gemfile", "README.md"]
  s.require_path = 'lib'  
	
	s.authors     = ['Bastien Gysler', 'eboutic.ch']
	s.email       = 'tech@eboutic.ch'
  s.homepage    = "https://github.com/eboutic/smartfocus4rails"

  s.add_dependency("smartfocus")
  s.add_dependency("premailer", "~> 1.7.0")
  s.add_dependency("hpricot", "~> 0.8.0")

  s.add_dependency("actionpack", ">= 3.2")
  s.add_dependency("activemodel", ">= 3.2")

  s.add_runtime_dependency("railties", ">= 3.2")
end