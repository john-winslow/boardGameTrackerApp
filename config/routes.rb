Rails.application.routes.draw do
  get '/' => 'games#index'
  # get 'sessions/new'
  resources :relationships, only: [:create]
  
  resources :users do
    resources :comments
    resources :games 
  end
  
  resources :games do 
    resources :comments
  end

  get '/games/:id'    => 'games#show'
  get '/login'        => 'sessions#new'
  post '/login'       => 'sessions#create'
  get 'logout'        => 'sessions#delete'

  
  resources :user_games, only: [:create]

end
