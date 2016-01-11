class UsersController < ApplicationController
  #Create new Users
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to root_path
  end

  def show
    @user = User.find(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
