Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'bills#index'
  get '/bills' => 'bills#index'
  get '/bills/new' => 'bills#new'
  post '/bills' => 'bills#create'
  get '/bills/:id' => 'bills#show', :constraints => { :id => /[^\/]+/ }

  get '/user_bills' => 'user_bills#index'
  get '/user_bills/:id' => 'user_bills#show'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end