class UsersController < ApplicationController
  skip_before_action :login_required
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to login_url, success: "登録完了　ログインしてください"
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @recruitments = Recruitment.where(user_id: @user.id).order(id: "DESC")
    if @recruitments.count > 9
      _recs_most_mode = @recruitments.pluck(:mode)
      @most_mode = _recs_most_mode.group_by{|e| e}.max_by{|_,v| v.size}.first
    else
      @most_mode = "データ数を増やしたら良く遊ぶモードが分かるよ"
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    if @user.id == session[:user_id]
      @user.destroy
      reset_session
      redirect_to root_path
    end
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name, :discord_id, :password, :password_confirmation)
  end
  
end
