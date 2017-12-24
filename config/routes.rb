Rails.application.routes.draw do

  get 'attractions/show'

  get 'attractions/index'

  get 'attractions/new'

  get 'signin' => 'users#signin', as: :signin
  post 'signin' => 'sessions#create'
  get 'signout' => 'sessions#destroy', as: :signout

  root 'application#home'
  resources :users

end
