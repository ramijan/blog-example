Rails.application.routes.draw do

  root 'posts#index'

  resources :posts, except: [:edit, :update, :destroy]
  resources :comments, only: [:create]
end
