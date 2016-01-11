class UsersController < ApplicationController
  #Create new Users
  def new
    @user = User.new
  end
end
