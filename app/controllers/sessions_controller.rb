class SessionsController < ApplicationController
  def new
    @user = User.new    
  end

  def create
    user = User.find_by_name(params[:user][:name])
    session[:user_id] = user.id
    redirect_to user
  end

  def destroy
    session.delete :name
  end
end
