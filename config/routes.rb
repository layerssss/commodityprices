Rails.application.routes.draw do
  root to: 'commodities#dashboard'

  resources :commodities
  resource :site_configuration
end
