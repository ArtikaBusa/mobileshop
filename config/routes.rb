Rails.application.routes.draw do
  resources :processors
  resources :displays
  resources :colors
  resources :storages
  resources :brands
  resources :products
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
