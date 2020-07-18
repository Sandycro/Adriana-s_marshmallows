Rails.application.routes.draw do
  #devise_for :users
  root to: 'pages#home'
  resources :categories, only: [:index, :show] do
    resources :products do
      resources :reviews, only: [:new, :create]
    end
  end
    resources :reviews, only: [:destroy]
end
