class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
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
    redirect_to '/' unless session.include? :user_id
    
    @message = params[:message] if params[:message] 
    @message ||= false
  end

  def edit
   
  end
  def update
    
    # @user.update_attribtutes(user_params)    

  end
  
  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:id, :name, :password, :nausea, :happiness,:tickets, :height, :admin)
  end


end
