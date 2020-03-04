# Customizing generator

Some rails default files generated are not necessary and can mess around with other files you create in the future, in order to modify it:

/config/application.rb


```
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
```

or:
```
module GeneratorDiving
    class Application < Rails::Application
    config.generators do |g|
      g.orm             :active_record
      g.template_engine :erb
      g.test_framework  :test_unit, fixture: false
      g.stylesheets     false
      g.javascript      false 
    end
...
```