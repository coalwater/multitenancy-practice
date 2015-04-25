module Multitenancy
  class Engine < ::Rails::Engine
    isolate_namespace Multitenancy
    require 'haml'
    config.generators do |g|
      g.test_framework :rspec, view_specs: false, controller_specs: false, helper_specs: false
    end
  end
end
