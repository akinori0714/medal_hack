Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
<<<<<<< Updated upstream
  resources :users
  resources :games
  resources :rankings
  
=======
  resources :users, only: [:edit, :update]
  resources :rankings
>>>>>>> Stashed changes
end
