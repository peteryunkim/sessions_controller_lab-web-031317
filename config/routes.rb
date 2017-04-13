Rails.application.routes.draw do

  root 'application#hello', as: :home
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
