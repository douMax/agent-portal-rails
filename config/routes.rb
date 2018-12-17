Rails.application.routes.draw do

  get 'projects/new'

  get 'projects/create'

  get 'projects/edit'

  get 'projects/update'

  get 'projects/destroy'

  root to:"session#new"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :documents
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
