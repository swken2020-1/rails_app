class TopController < ApplicationController
  skip_before_action :login_required
  def main
    if session[:user_id].nil?
      @recruitments = Recruitment.all.order(id: "DESC")
    else
      redirect_to recruitments_path
    end
  end
end
