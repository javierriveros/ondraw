Rails.application.routes.draw do
  resources :posts
  resources :usuarios, as: :users, only: [:show, :update]
  resources :friendships, only: [:create, :index, :update]
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  authenticated :user do
    root 'main#home'
  end
  unauthenticated :user do
    root 'main#unregistered', as: :unregistered_path
  end
  post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"
end
