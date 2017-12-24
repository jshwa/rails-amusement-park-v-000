Rails.application.routes.draw do

  get 'sessions/create'

  root 'application#home'
  resources :users

end
