Rails.application.routes.draw do

  get 'login' => 'sessions#create' 

  root 'application#home'
  resources :users

end
