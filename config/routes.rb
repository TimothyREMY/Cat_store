Rails.application.routes.draw do

  devise_for :users
  
  root "items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items

  resources :orders

  resources :selections

  resources :users

end
