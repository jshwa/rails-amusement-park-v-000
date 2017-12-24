class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:name])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render '/users/login'
    end
  end
end
