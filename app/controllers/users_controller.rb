class UsersController < ApplicationController

  before_filter :authorize

  #Create new Users
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Successful Sign Up!"
      flash[:color] = "valid"
    else
      flash[:notice] = "Unsuccessful"
      flash[:color] = 'invalid'
      redirect_to '/new'
    end

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
