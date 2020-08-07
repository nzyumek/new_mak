class UsersController < ApplicationController
  
  def index 

    @users = User.all.page(params[:page]).per(10).order(:id)
    # @search_params = user_search_params
    # @users = User.search(@search_params)
    @gen = User.group(:gen).pluck(:gen).sort
    @bachelor = User.group(:bachelor).pluck(:bachelor).sort
    
    if !params[:gen].blank? #|| !params[:bachelor].blank?
      @users = User.where(gen: params[:gen]).page(params[:page]).per(10).order(:id) 
    elsif !params[:bachelor].blank?
      @users = User.where(bachelor: params[:bachelor]).page(params[:page]).per(10).order(:id)
    else
      @users = User.all.page(params[:page]).per(10).order(:id)
    end
    
    # if params[:gen] == "未選択"
    #   @users = User.all
    # else
    #   @users = User.where(gen: params[:gen])
    # end  
  end
  
  def search
      @users = User.where('gen LIKE ? AND bachelor LIKE ?', "%#{params[:gen]}%", "%#{params[:bachelor]}%")
      @gen = User.group(:gen).pluck(:gen).sort　#ここを追加！
      @bachelor = User.group(:bachelor).pluck(:bachelor).sort
      render :index

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
    redirect_to users_path
  end

  private
  
  def user_search_params
    params.fetch(:search, {}).permit(:gen)
  end  
  
  def user_params
    params.require(:user).permit(:email, :gen, :firstn, :lastn, :h_firstn, :h_lastn, :bachelor, :major, :username, :email, :studno, :role)
  end  
  
    
    
end
