Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  concern :da_routes do
    collection do
      get :only_tenant
      get :only_user
      get :everything
    end
  end

  resources :tenants do
    concerns :da_routes
  end

  resources :customers do
    concerns :da_routes
  end

  resources :users do
    concerns :da_routes
  end

  root to: 'tenants#index'
end
