Rails.application.routes.draw do

  get 'signin' => 'users#signin', as: :signin
  post 'signin' => 'sessions#create'
  get 'signout' => 'sessions#destroy', as: :signout

  root 'application#home'
  resources :users

end
