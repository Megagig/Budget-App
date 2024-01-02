Rails.application.routes.draw do
  devise_for :users
 
  root 'groups#index'

  resources :groups, only: [:index, :new, :create]
  resources :categories, only: [:index, :new, :create]

end
