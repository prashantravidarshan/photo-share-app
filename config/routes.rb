Rails.application.routes.draw do
  get 'web/index'
  get 'web/profile'
  resources :photos
  resources :albums do
    resources :photos
  end
  devise_for :users
  root 'albums#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
