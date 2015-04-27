module Multitenancy
  class User < ActiveRecord::Base
    has_one :account, class_name: 'Multitenancy::Account'
  end
end
