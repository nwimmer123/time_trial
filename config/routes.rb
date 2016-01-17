Rails.application.routes.draw do

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'


get '/index' => 'users#index'
get '/signup' => 'users#new'
post '/users' => 'users#create'
get '/users/:id' => 'users#edit'
put '/users/:id/edit' => 'users#update'
delete '/users/:id' => 'users#destroy'

end
