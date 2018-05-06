Rails.application.routes.draw do
  resource  :sessions, only: [ :new, :create, :destroy ]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

end
