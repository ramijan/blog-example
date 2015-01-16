Rails.application.routes.draw do

  root 'posts#index'

  resources :posts, except: [:edit, :update, :destroy]
  
end
