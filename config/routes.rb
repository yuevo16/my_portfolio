Rails.application.routes.draw do

  root "users#index"

  resources :users do
    collection do
      get 'profile'
      get 'portfolio'
      get 'sns'
      get 'contact'
    end
  end
end
