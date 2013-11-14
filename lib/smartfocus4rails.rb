require 'rails'
require 'action_view'
require 'premailer'
require 'smartfocus'

module Smartfocus4rails
	# Base
	autoload :EmvHandler, 'smartfocus4rails/emv_handler'
	autoload :Collector, 'smartfocus4rails/collector'
	autoload :Newsletter, 'smartfocus4rails/newsletter'
	autoload :Configuration, 'smartfocus4rails/configuration'
	autoload :Premailer, 'smartfocus4rails/premailer'
	autoload :RenderedViews, 'smartfocus4rails/rendered_views'
	autoload :Version, 'smartfocus4rails/version'

	# Models
	autoload :Base, 'smartfocus4rails/models/base'
	autoload :Message, 'smartfocus4rails/models/message'
	autoload :Campaign, 'smartfocus4rails/models/campaign'

	# Controllers
	autoload :BaseController, 'smartfocus4rails/controllers/base_controller'

	ActionView::Template.register_template_handler :emv, EmvHandler	

	if defined?(Rails)
		require 'smartfocus4rails/railtie'
	end
end