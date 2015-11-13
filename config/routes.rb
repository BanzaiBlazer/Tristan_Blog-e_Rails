Rails.application.routes.draw do
 
  # get 'users/index'
  root 'users#index'

  get 'users/show'

  get 'users/profile'

  get '/login', to: 'users#login'

  get '/logout', to: 'users#logout'

  post '/loginverify', to: 'users#loginverify'

  get '/profile', to: 'users#profile'

# we are going to get the back end data into the front end with this
# as a start
  resources :users
  resources :posts

end