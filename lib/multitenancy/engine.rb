module Multitenancy
  class Engine < ::Rails::Engine
    isolate_namespace Multitenancy
  end
end
