# app/controllers/dashboard_controller.rb
class DashboardController < ApplicationController
  before_action :require_user

  def index
    # You can add any logic here if needed
  end
  def require_user
    unless current_user
      flash[:alert] = "You must be logged in to access this section"
      redirect_to new_session_path
    end
  end
end
