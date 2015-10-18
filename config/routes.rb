Rails.application.routes.draw do
 
  # get 'users/index'

  get 'users/show'

  get 'users/profile'

  get 'users/new'

  get 'users/edit'

# we are going to get the back end data into the front end with this
# as a start
  resources :users

end