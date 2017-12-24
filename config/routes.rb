Rails.application.routes.draw do

  get 'login' => 'sessions#create', as: :login 

  root 'application#home'
  resources :users

end
