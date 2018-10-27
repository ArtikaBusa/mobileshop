Rails.application.routes.draw do
  resources :users do
    resources :comments do
      resources :replies
    end
  end
  resources :processors
  resources :displays
  resources :colors
  resources :storages
  # resources :brands
  resources :products
  resources :categories

  get    '/brands',          to: 'brands#index', as: 'brands'
  post   '/brands',          to: 'brands#create'
  get    '/brands/new',      to: 'brands#new',   as: 'new_brand'
  get    '/brands/:id',      to: 'brands#show',  as: 'brand'

  get 'brand', to: :show, controller: 'brands'


  get    '/brands/:id/edit', to: 'brands#edit',  as: 'edit_brand'
  # patch  '/brands/:id',      to: 'brands#update'

  match '/brands/:id' => 'brands#update',
    via: [:put, :patch],
    as:   :update_brand

  delete '/brands/:id',      to: 'brands#destroy'

  root to: "brands#index"
  # root "brand#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
