Rails.application.routes.draw do
  devise_for :users, skip: [:sessions]

  as :user do
    get 'sign_in', to: 'devise/sessions#new', as: :new_user_session
    post 'sign_in', to: 'devise/sessions#create', as: :user_session
    get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  unauthenticated do
    root "splash_screen#index", as: :unauthenticated_root
  end

  resources :categories, only: [:index, :new, :show, :create] do
    resources :details, only: [:index, :new, :create]
  end
end