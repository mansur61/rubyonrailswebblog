Rails.application.routes.draw do

  
  
  
  devise_for :users
 
  resources :home
  resources :blogs

  get 'arama',to: 'home#arama'
  get 'home/about'
   #get 'home/show'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

