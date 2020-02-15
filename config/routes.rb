Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :contacts
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
