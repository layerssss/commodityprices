Rails.application.routes.draw do
  get 'reports/index'

  root to: 'commodities#dashboard'

  resources :commodities do
    post :capture_now, on: :collection
  end
  resource :site_configuration
  resources :reports
end
