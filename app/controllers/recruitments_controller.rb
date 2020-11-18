class RecruitmentsController < ApplicationController
  before_action :login_required
  
  def index
    @user = User.find_by(id: session[:user_id])
    @recruitments = Recruitment.all.order(id: "DESC")
  end

  def new
    @recruitment = Recruitment.new
  end
  
  def create
    @recruitment = current_user.recruitments.new(recruitment_params)
    
    if @recruitment.save
      redirect_to recruitments_path, notice: "投稿しました"
    else
      render :new
    end
  end
  
  def update
    @recruitment = Recruitment.find(params[:id])
    @recruitment.update(recruitment_params)
    redirect_to recruitments_path
  end
  
  def show
    @recruitment = Recruitment.find(params[:id])
  end

  def edit
  end
  
  private
  
  def recruitment_params
    params.require(:recruitment).permit(:mode, :rank, :use_chara, :need_chara, :play_style, :flag)
  end
end
