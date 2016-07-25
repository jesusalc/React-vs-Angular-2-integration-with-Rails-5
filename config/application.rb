require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sampleapp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #...Rack-Cors Configuration - Start
    config.middleware.insert_before 0, 'Rack::Cors' do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end
    # This configuration will permit all types of
    # requests from any source (* denotes any address)
    # to be accepted. For development, this setup is
    # acceptable. However, for production, you need to
    # replace the asterisk with the URL of your client-side
    # application.

    #...Rack-Cors Configuration - end

    # Explicitly add the 'node_modules' directory
    config.assets.paths << Rails.root.join('node_modules')
  end
end
