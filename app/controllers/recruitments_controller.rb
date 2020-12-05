class RecruitmentsController < ApplicationController
  before_action :login_required
  
  def index
    @user = User.find_by(id: session[:user_id])
    @recruitments = Recruitment.all.order(id: "DESC").page(params[:page]).without_count.per(5)
  end

  def new
    @recruitment = Recruitment.new
  end
  
  def create
    @recruitment = current_user.recruitments.new(recruitment_params)
    
    if @recruitment.save
      redirect_to recruitments_path, notice: "投稿しました"
    else
      render 'new'
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
  
  def destroy
    @recruitment = Recruitment.find(params[:id])
    if @recruitment.user_id == session[:user_id]
      @recruitment.destroy
      redirect_to recruitments_path
    end
  end
  
  def search
    if params[:mode]=="指定無し"
      params[:mode] = nil
      @recruitments = Recruitment.all.order(id: "DESC")
    else
      @recruitments = Recruitment.where(mode: [params[:mode]], need_chara: params[:want_chara]).order(id: "DESC")
    end
  end
  
  def edit
  end
  
  private
  
  def recruitment_params
    params.require(:recruitment).permit(:mode, :rank, :use_chara, :need_chara, :play_style, :flag)
  end
end
