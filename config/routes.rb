Rails.application.routes.draw do
  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/pictures'
  get 'static_pages/videos'
  get 'static_pages/about'
  get 'static_pages/help'
  get '/map' => 'application#map'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
