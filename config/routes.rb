Rails.application.routes.draw do

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  root "items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items, path: "photos" do
    resources :selections
    resources :pictures, only: [:create]
  end

  resources :layouts, only: [:index], path: "notre_equipe" 
  resources :carts, only: [:new, :create, :index], path: "mon_panier"
  resources :orders, path: "vos_commandes"
  resources :users

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

end
