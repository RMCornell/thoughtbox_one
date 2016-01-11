class SessionsController < ApplicationController
  def create
    user = User.find(params[:id])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to '/'
    else
      redirect to '/'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
