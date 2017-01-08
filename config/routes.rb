Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/bills' => 'bills#index'
  get '/bills/:id' => 'bills#show', :constraints => { :id => /[^\/]+/ }

  get '/' => 'user_bills#index'
  get '/user_bills' => 'user_bills#index'
  post '/user_bills' => 'user_bills#create'
  get '/user_bills/:id' => 'user_bills#show', :constraints => { :id => /[^\/]+/ }
  delete '/user_bills/:id' => 'user_bills#destroy'

  get '/checkpoints' => 'checkpoints#index'
  get '/checkpoints/new' => 'checkpoints#new'
  post '/checkpoints/' => 'checkpoints#create'
  get '/checkpoints/:id' => 'checkpoints#show'
  delete '/checkpoints/:id' => 'checkpoints#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end