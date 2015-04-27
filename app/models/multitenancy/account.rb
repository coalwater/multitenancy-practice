module Multitenancy
  class Account < ActiveRecord::Base
    belongs_to :owner, class_name: 'Multitenancy::User'
  end
end
