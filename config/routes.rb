Rails.application.routes.draw do

  root "layouts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  ressources :items
  
end