Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :users
  resources :users do
    collection do
      get 'account'
    end
  end
  resources :games
  resources :rankings
  resources :inquiries
  resources :tournaments
end