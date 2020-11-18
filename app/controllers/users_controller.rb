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
    @user = User.find(params[:id])
    @recruitments = Recruitment.where(user_id: @user.id).order(id: "DESC")
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :discord_id, :password, :password_confirmation)
  end
  
end
