class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :password_digest, :happiness, :nausea, :height, :tickets, :admin)
  end
end
