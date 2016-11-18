Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  # get 'static_pages/help'
  get '/help', to: 'static_pages#help'

  # get 'static_pages/about'
  get '/about', to: 'static_pages#about'

  # get 'static_pages/contact'
  get '/contact', to: 'static_pages#contact'

  # USER
  get '/sign_up', to: 'users#new'
  post '/sign_up', to: 'users#create'

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
end
