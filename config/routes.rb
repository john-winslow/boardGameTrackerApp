Rails.application.routes.draw do
  get '/' => 'games#index'
  # get 'sessions/new'
  resources :users do
    resources :comments
    resources :games 
  end 

  resources :comments
  
  resources :games

  get '/games/:id'    => 'games#show'
  get '/login'        => 'sessions#new'
  post '/login'       => 'sessions#create'
  get 'logout'        => 'sessions#delete'

  resources :relationships

end
