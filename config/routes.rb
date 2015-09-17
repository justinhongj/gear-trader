Rails.application.routes.draw do

  root 'home#index', as: :home


  get 'users/' => 'users#index', as: :users

  get 'users/new' => 'users#new', as: :new_user

  get 'users/:id' => 'users#show', as: :user

  post 'users/' => 'users#create'


  get 'sessions/new' => 'sessions#new', as: :new_session

  post 'sessions/new' => 'sessions#create', as: :create_session

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session 


  get 'targets/' => 'targets#index', as: :profile


  get 'posts/' => 'posts#index', as: :posts

  get 'posts/new' => 'posts#new', as: :new_post

  post 'posts/' => 'posts#create'

  get 'posts/:id/edit' => 'posts#edit', as: :edit_post

  patch 'posts/:id' => 'posts#update'

  delete 'posts/:id' => 'posts#destroy'

  get 'posts/guitars' => 'posts#guitars', as: :guitars

  get 'posts/bass' => 'posts#bass', as: :bass

  get 'posts/amplifiers' => 'posts#amplifiers', as: :amplifiers

  get 'posts/drums' => 'posts#drums', as: :drums

  get 'posts/effects' => 'posts#effects', as: :effects

  get 'posts/keyboards' => 'posts#keyboards', as: :keyboards

  get 'posts/live' => 'posts#live', as: :live

  get 'posts/recording' => 'posts#recording', as: :recording

  get 'posts/microphones' => 'posts#microphones', as: :microphones

  get 'posts/other' => 'posts#other', as: :other

  get 'posts/:id' => 'posts#show', as: :post


  get 'categories/index' => 'categories#index', as: :categories

  get 'categories/:name' => 'categories#show', as: :category

  
  get 'trades/new' => 'trades#new', as: :new_trade

  post 'trades/' => 'trades#create', as: :create_trade

  patch 'trades/:id' => 'trades#update'


  post 'watches/' => 'watches#create', as: :create_watch


  post 'chats/' => 'chats#create', as: :create_chat

  get 'chats/:id' => 'chats#show', as: :chat

end






























