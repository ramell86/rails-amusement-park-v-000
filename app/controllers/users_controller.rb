class UsersController < ApplicationController
  def new
    @user = User.new

    binding.pry
  end
  def create
  end

  def index
    @users = User.all
  end

end
