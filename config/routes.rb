Rails.application.routes.draw do

  get 'signin' => 'users#signin', as: :signin
  post 'signin' => 'sessions#create'

  root 'application#home'
  resources :users

end
