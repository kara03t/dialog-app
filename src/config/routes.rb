Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :posts
      resources :visits

      root to: "users#index"
    end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registraions: 'users/registraions'
  }
  root to: "home#index"
  resources :users, only: [:show]
  resources :posts, only: [:create]

  namespace :api, {format: 'json'} do
    resources :users, :only => [:show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
