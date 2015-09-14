Rails.application.routes.draw do

  root 'home#index', as: :home


  get 'users/' => "users#index", as: :users

  get 'users/new' => 'users#new', as: :new_user

  post 'users/' => 'users#create'


  get 'sessions/new' => 'sessions#new', as: :new_session

  post 'sessions/new' => 'sessions#create', as: :create_session

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session 


  get 'targets/' => 'targets#index', as: :profile

end
