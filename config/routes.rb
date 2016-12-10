Rails.application.routes.draw do
  get '/' => 'games#index'
  # get 'sessions/new'
  resources :users

  resources :comments

  resources :relationships, only: [:create]
  
  resources :games

  get '/games/:id'    => 'games#show'
  get '/login'        => 'sessions#new'
  post '/login'       => 'sessions#create'
  get 'logout'        => 'sessions#delete'

  
  resources :user_games, only: [:create]

end
