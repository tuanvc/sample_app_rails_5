Rails.application.routes.draw do
  get 'sessions/new'

  root "static_pages#home"
  get '/home', to: 'static_pages#home'
  get '/pictures', to: 'static_pages#pictures'
  get '/videos', to: 'static_pages#videos'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/map', to: 'application#map'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
