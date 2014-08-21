Rails.application.routes.draw do

  # root path for blog
  root to: 'posts#index'

  ###### POST ROUTES ######

  # route to show all the posts
  get '/posts', to: 'posts#index'

  # handles routes for creating a new post
  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'

  # handles route for showing individual posts
  get '/posts/:id', to: 'posts#show'

  ###### TAG ROUTES #####

  # handles route to show all tags
  get '/tags', to: 'tags#index'

  # 

end