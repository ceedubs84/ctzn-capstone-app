Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/bills' => 'bills#index'
  get '/bills/:id' => 'bills#show', :constraints => { :id => /[^\/]+/ }
  get '/test' => 'bills#test'

  get '/' => 'user_bills#index'
  get '/user_bills' => 'user_bills#index'
  post '/user_bills' => 'user_bills#create'
  get '/user_bills/:id' => 'user_bills#show', :constraints => { :id => /[^\/]+/ }
  delete '/user_bills/:id' => 'user_bills#destroy'

  get '/legislators' => 'legislators#index'
  get '/legislators/new' => 'legislators#new'
  post '/legislators' => 'legislators#create'
  get '/legislators/:id' => 'legislators#show'
  delete 'legislators/:id' => 'legislators#destroy'

  get '/checkpoints' => 'checkpoints#index'
  get '/checkpoints/new' => 'checkpoints#new'
  post '/checkpoints' => 'checkpoints#create'
  get '/checkpoints/:id' => 'checkpoints#show'
  delete '/checkpoints/:id' => 'checkpoints#destroy'

  get '/checkpoint_actions' => 'checkpoint_actions#index'
  get '/checkpoint_actions/new' => 'checkpoint_actions#new'
  post '/checkpoint_actions' => 'checkpoint_actions#create'
  get '/checkpoint_actions/:id' => 'checkpoint_actions#show'
  delete '/checkpoint_actions/:id' => 'checkpoint_actions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      get '/bills' => 'bills#index'
      get '/bills/:id' => 'bills#show'

      get '/user_bills' => 'user_bills#index'
      post '/user_bills' => 'user_bills#create'
      get '/user_bills/:id' => 'user_bills#show'
      delete '/user_bills/:id' => 'user_bills#destroy'

      get '/checkpoint_actions' => 'checkpoint_actions#index'
      get '/checkpoint_actions/new' => 'checkpoint_actions#new'
      post '/checkpoint_actions' => 'checkpoint_actions#create'
      get '/checkpoint_actions/:id' => 'checkpoint_actions#show'
      delete '/checkpoint_actions/:id' => 'checkpoint_actions#destroy'

      get '/legislators' => 'legislators#index'
      get '/legislators/new' => 'legislators#new'
      post '/legislators' => 'legislators#create'
      get '/legislators/:id' => 'legislators#show'
      delete 'legislators/:id' => 'legislators#destroy'
    end
  end

end