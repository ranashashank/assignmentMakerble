class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :require_user
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
    def logged_in?
      !current_user.nil?
    end
  
    def require_user
      unless logged_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to root_path
      end
    end
  
    def require_receptionist
      unless current_user&.role == 'receptionist'
        flash[:error] = "You must be a receptionist to access this section"
        redirect_to root_path
      end
    end
  
    def require_doctor
      unless current_user&.role == 'doctor'
        flash[:error] = "You must be a doctor to access this section"
        redirect_to root_path
      end
    end
  end
  