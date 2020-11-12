class UsersController < ApplicationController
  skip_before_action :login_required
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to login_url, notice: "登録完了　ログインしてください"
    else
      render :new
    end
  end

  def show
    if session[:user_id]==nil
      redirect_to login_url, notice: "ログインしてください"
    else
      @user = User.find_by(id: session[:user_id])
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :discord_id, :password, :password_confirmation)
  end
  
end
