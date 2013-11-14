module Smartfocus4rails
	class SetupGenerator < Rails::Generators::Base

		source_root File.expand_path('../templates', __FILE__)

		def copy_config_template
			copy_file "smartfocus.yml", "config/smartfocus.yml"
		end

	end
end