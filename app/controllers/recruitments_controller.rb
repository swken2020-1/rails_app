class RecruitmentsController < ApplicationController
  before_action :login_required
  
  def index
    @recruitments = Recruitment.all
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

  def show
  end

  def edit
  end
  
  private
  
  def recruitment_params
    params.require(:recruitment).permit(:mode, :rank, :use_chara, :need_chara, :play_style)
  end
end
