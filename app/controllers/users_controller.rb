class UsersController < ApplicationController
  # before_action :require_login
  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params)
     if @user.save
    
        session[:user_id] = @user.id
      redirect_to @user
     else 
        render 'new'
     end
  end
  def show
    redirect_to '/' unless
      session.include? :user_id
    
      @user = User.find_by(id: params[:id])

  end
  def edit
   
  end
  def update
    binding.pry
    @user = User.find_by(id: params[:id])
    
    # @user.update_attribtutes(user_params)    

  end
  
  private
  def user_params
    params.require(:user).permit(:id, :name, :password, :nausea, :happiness,:tickets, :height, :admin)
  end


end
