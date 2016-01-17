Rails.application.routes.draw do

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'


get '/index' => 'users#index'
get '/signup' => 'users#new'
post '/users' => 'users#create'
get '/users/:id' => 'users#show'
get '/users/:id/edit' => 'users#edit'
put '/user/:id' => 'users#update'
delete '/users/:id' => 'users#destroy'

get '/articles' => 'articles#index'
# get '/new' => 'articles#new'
# post '/articles' => 'articles#create'
# get '/articles/:id' => 'articles#show'
# get '/articles/:id/edit' => 'articles#edit'
# put '/articles/:id' = 'articles#update'
# delete '/articles/:id' => 'articles#destroy'


end
