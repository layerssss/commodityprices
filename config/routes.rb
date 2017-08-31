Rails.application.routes.draw do
  root to: 'commodities#dashboard'

  resources :commodities do
    post :capture_now, on: :collection
  end
  resource :site_configuration
end
