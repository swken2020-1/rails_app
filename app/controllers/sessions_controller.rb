class SessionsController < ApplicationController
  
  skip_before_action :login_required
  
  def new
  end
  
  def create
    user = User.find_by(name: session_params[:name])
    
    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to recruitments_path, info: "ログインしました"
    else
      redirect_to login_url, danger: "ログインに失敗しました"
    end
  end
  
  def destroy
    reset_session
    redirect_to root_url, warning: "ログアウトしました"
  end
  
  private
  
  def session_params
    params.require(:session).permit(:name, :password)
  end
end
