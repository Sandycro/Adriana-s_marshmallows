Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [:index, :show] do
    resources :products, only: [:new, :create] do
      resources :reviews, only: [:new, :create]
    end
  end
      resources :products, only:[:show, :edit, :update, :destroy]
      resources :reviews, only: [:destroy]
end
