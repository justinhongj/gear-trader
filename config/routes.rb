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

  get 'posts/edit' => 'posts#edit', as: :edit_post

  patch 'posts/' => 'posts#update'

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

  # get 'categories/eguitars' => 'categories#eguitars', as: :eguitars

  # get 'categories/aguitars' => 'categories#aguitars', as: :aguitars

  # get 'categories/cguitars' => 'categories#cguitars', as: :cguitars

  # get 'categories/ebass' => 'categories#ebass', as: :ebass

  # get 'categories/abass' => 'categories#abass', as: :abass

  # get 'categories/combos' => 'categories#combos', as: :combos

  # get 'categories/tubes' => 'categories#tubes', as: :tubes

  # get 'categories/heads' => 'categories#heads', as: :heads

  # get 'categories/cabinets' => 'categories#cabinets', as: :cabinets

  # get 'categories/stacks' => 'categories#stacks', as: :stacks

  # get 'categories/preamps' => 'categories#preamps', as: :preamps

  # get 'categories/ampacc' => 'categories#ampacc', as: :ampacc

  # get 'categories/epedals' => 'categories#epedals', as: :epedals

  # get 'categories/mepedals' => 'categories#mepedals', as: :mepedals

  # get 'categories/bpedals' => 'categories#bpedals', as: :bpedals

  # get 'categories/vepedals' => 'categories#vepedals', as: :vepedals

  # get 'categories/fxacc' => 'categories#fxacc', as: :fxacc

  # get 'categories/adrums' => 'categories#adrums', as: :adrums

  # get 'categories/edrums' => 'categories#edrums', as: :edrums

  # get 'categories/cymbals' => 'categories#cymbals', as: :cymbals

  # get 'categories/drumacc' => 'categories#drumacc', as: :drumacc

  # get 'categories/percussion' => 'categories#percussion', as: :percussion

  # get 'categories/dpianos' => 'categories#dpianos', as: :dpianos

  # get 'categories/synthesizers' => 'categories#synthesizers', as: :synthesizers

  # get 'categories/workstations' => 'categories#workstations', as: :workstations

  # get 'categories/mcontrollers' => 'categories#mcontrollers', as: :mcontrollers

  # get 'categories/minterfaces' => 'categories#minterfaces', as: :minterfaces

  # get 'categories/keyacc' => 'categories#keyacc', as: :keyacc

  # get 'categories/active' => 'categories#active', as: :active

  # get 'categories/passive' => 'categories#passive', as: :passive

  # get 'categories/stagemon' => 'categories#stagemon', as: :stagemon

  # get 'categories/poweramp' => 'categories#poweramp', as: :poweramp

  # get 'categories/subwoofers' => 'categories#subwoofers', as: :subwoofers

  # get 'categories/studiomon' => 'categories#studiomon', as: :studiomon

  # get 'categories/audioint' => 'categories#audioint', as: :audioint

  # get 'categories/audiocon' => 'categories#audiocon', as: :audiocon

  # get 'categories/software' => 'categories#software', as: :software

  # get 'categories/recacc' => 'categories#recacc', as: :recacc

  # get 'categories/dynamic' => 'categories#dynamic', as: :dynamic

  # get 'categories/condenser' => 'categories#condenser', as: :condenser

  # get 'categories/tube' => 'categories#tube', as: :tube

  # get 'categories/ribbon' => 'categories#ribbon', as: :ribbon

  # get 'categories/drum' => 'categories#drum', as: :drum

  # get 'categories/usb' => 'categories#usb', as: :usb

  # get 'categories/micacc' => 'categories#micacc', as: :micacc

  # get 'categories/other' => 'categories#other', as: :other

end

