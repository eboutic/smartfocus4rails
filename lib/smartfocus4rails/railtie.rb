require 'rails'

module Smartfocus4rails
	class Railtie < Rails::Railtie
	
	  config.to_prepare do	  	
	    file = "#{Rails.root}/config/smartfocus.yml"
	    
	    if File.exist?(file)
	      config = YAML.load_file(file)[Rails.env] || {}
	      
  	    Configuration.server_name  = config['server_name']
  	    Configuration.endpoint     = config['endpoint']
  	    Configuration.login        = config['login']
  	    Configuration.password     = config['password']
  	    Configuration.key          = config['key']
  	    Configuration.debug        = config['debug']
  	    Configuration.encoding     = Rails.configuration.encoding || 'utf-8'
	    end	    
	  end		
	
	end
end