class TopController < ApplicationController
  skip_before_action :login_required
  def main
  end
end
