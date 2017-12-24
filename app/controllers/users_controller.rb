class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_action :new_user, only: [:new, :signin]

  def index
    @users = users.all
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render 'new'
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :happiness, :nausea, :height, :tickets, :admin)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end
end
