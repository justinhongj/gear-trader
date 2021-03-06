Rails.application.routes.draw do

  root 'posts#index'


  get 'users/' => 'users#index', as: :users

  get 'users/new' => 'users#new', as: :new_user

  get 'users/:id/edit' => 'users#edit', as: :edit_user

  patch 'users/:id' => 'users#update'

  get 'users/:id' => 'users#show', as: :user

  post 'users/' => 'users#create', as: :create_user


  get 'sessions/new' => 'sessions#new', as: :new_session

  post 'sessions/new' => 'sessions#create', as: :create_session

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session 


  get 'targets/' => 'targets#index', as: :profile


  get '/' => 'posts#index', as: :home

  get 'posts/new' => 'posts#new', as: :new_post

  post 'posts/' => 'posts#create'

  get 'posts/:id/edit' => 'posts#edit', as: :edit_post

  patch 'posts/:id' => 'posts#update'

  delete 'posts/:id' => 'posts#destroy'

  get 'posts/:id' => 'posts#show', as: :post


  get 'categories/index' => 'categories#index', as: :categories

  get 'categories/:name' => 'categories#show', as: :category

  
  get 'trades/new' => 'trades#new', as: :new_trade

  post 'trades/' => 'trades#create', as: :create_trade

  patch 'trades/:id' => 'trades#update'

  delete 'trades/:id' => 'trades#destroy', as: :delete_trade


  post 'watches/' => 'watches#create', as: :create_watch

  delete 'watches/:id' => 'watches#destroy', as: :delete_watch


  post 'chats/' => 'chats#create', as: :create_chat

  get 'chats/index' => 'chats#index', as: :chats

  get 'chats/:id' => 'chats#show', as: :chat


  post 'messages/' => 'messages#create', as: :create_message

  namespace :api do
    resources :posts, only: [:index, :show]
    resources :users, only: [:index, :show, :create, :update, :destroy]
    resources :messages, only: [:index, :show]
  end

end






























