Rails.application.routes.draw do
  
   get  '/signup' => 'user#new'
  post '/users' => 'user#create'
  
  get '/' => 'welcome#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
    get '/logout' => 'users#index'
resources :todolists
end
