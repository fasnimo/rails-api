Rails.application.routes.draw do
  # resources :team_ownerships
  root to: 'pages#home'
  resources :users, only: [:create]
  resources :users do
    resources :players, only: [:index]
  end 
  resources :sessions, only: [:create]
  get 'logged_in', to: 'sessions#logged_in'
  delete 'logout', to: 'sessions#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
