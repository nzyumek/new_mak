class UsersController < ApplicationController
  
  def index 
    @users = User.all
  end
  
  def show
    @user = current_user
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  private
  
  def user_params
    params.require(:user).permit(:email, :gen, :firstn, :lastn, :h_firstn, :h_lastn, :bachelor, :major, :username, :email, :studno)
  end  
  
    
    
end
