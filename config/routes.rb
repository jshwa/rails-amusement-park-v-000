Rails.application.routes.draw do

  get 'signin' => 'sessions#create', as: :signin 

  root 'application#home'
  resources :users

end
