class UsersController < ApplicationController
  def new
    @user = User.new

    # binding.pry
  end
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to @users
  #   else
  #     redirect_to '/'
  #   end
  # end

  # def index
  #   @users = User.all
  # end
  # private
  # def user_params
  #   params.require(:use).permit(:name, :password, :nausea, :happiness,:tickets, :height, :admin)
  # end


end
