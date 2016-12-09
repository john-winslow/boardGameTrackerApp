Rails.application.routes.draw do
  get '/' => 'games#index'
  # get 'sessions/new'

  resources :comments
  resources :users
  resources :games

  get '/games/:id' => 'games#show'
  get '/login'        => 'sessions#new'
  post '/login'       => 'sessions#create'
  get 'logout'        => 'sessions#delete'

end
