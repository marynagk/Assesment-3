Rails.application.routes.draw do
  resource  :sessions, only: [ :new, :create, :destroy ]
  resources :users do
    resources :expertises
  end
  resources :users do
    resources :goals
      # resources :recommedations, shallow: true, only: [ :new, :create]
  end

  resources :goals, only: [] do
      resources :recommendations, shallow: true, only: [ :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

end
