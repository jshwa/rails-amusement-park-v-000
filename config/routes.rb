Rails.application.routes.draw do

  get 'users/new'

  get 'users/show'

  root 'application#index'

end
