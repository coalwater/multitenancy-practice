Rails.application.routes.draw do

  mount Multitenancy::Engine => "/multitenancy"
end
