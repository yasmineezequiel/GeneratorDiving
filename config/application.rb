require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module GeneratorDiving
    class Application < Rails::Application
    config.generators do |generate|
    generate.helper false
    generate.assets false
    generate.view_specs false
    generate.helper_specs false
    generate.routing_specs false
    generate.controller_specs false    
    end
  end
end
