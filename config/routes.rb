Rails.application.routes.draw do
  get '/' => 'games#index'
  # get 'sessions/new'

  resources :comments

  resources :users do
    resources :games
  end
  resources :relationships, only: [:create]
  
  resources :games

  get '/games/:id' => 'games#show'
  get '/login'        => 'sessions#new'
  post '/login'       => 'sessions#create'
  get 'logout'        => 'sessions#delete'

  
  resources :user_games, only: [:create]

end
