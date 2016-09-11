Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

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

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
