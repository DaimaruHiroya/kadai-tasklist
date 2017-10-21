Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  get 'profile', to: 'users#edit'
  delete 'resign', to: 'users#destroy'
  resources :users, only: [:create, :update]
  
  resources :tasks
end