Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'welcome#index'

   # namespace :slack do
     get 'login', to: 'session#create'
  # end

  get '/auth/:slack/callback', to: 'session#create'

end
