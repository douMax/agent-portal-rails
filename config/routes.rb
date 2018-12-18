Rails.application.routes.draw do


  root to:"session#new"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  post '/projects/:project_id/lots/import' => 'lots#import', :as => 'lots_import'

  resources :documents
  resources :users
  resources :projects do
    resources :lots
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
