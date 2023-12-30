Rails.application.routes.draw do
  devise_for :users
 
  root 'splash#index'

  resources :groups do
    resources :exchanges
  end

end
