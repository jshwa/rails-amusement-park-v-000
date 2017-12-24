Rails.application.routes.draw do

  get 'signin' => 'users#signin', as: :signin
  post 'signin' => 'sessions#create'
  get 'signout' => 'sessions#destroy', as: :signout
  post 'take_ride' => 'attractions#take_ride', as: :take_ride

  root 'application#home'
  resources :users
  resources :attractions

end
