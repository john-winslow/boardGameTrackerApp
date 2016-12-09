Rails.application.routes.draw do
  get '/' => 'games#index'
  # get 'sessions/new'
  resources :users

  resources :comments

  
  resources :games

  get '/games/:id'    => 'games#show'
  # post '/users/new'   => 'users#create'
  get '/login'        => 'sessions#new'
  post '/login'       => 'sessions#create'
  get 'logout'        => 'sessions#delete'

end
