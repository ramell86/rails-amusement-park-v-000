class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new

    # binding.pry
  end

  def create
    @user = User.new(user_params)

    @user.save

    redirect_to users_path(@user)
  end
  def show
    @user = User.find_by(id: params[:id])
  end
  
  private
  def user_params
    params.require(:user).permit(:id, :name, :password, :nausea, :happiness,:tickets, :height, :admin)
  end


end
