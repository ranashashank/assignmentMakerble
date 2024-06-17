class DoctorsController < ApplicationController
  before_action :require_user
  before_action :require_doctor

  def index
    @patients = Patient.all
    @patient_registration_chart = Patient.group_by_minute(:created_at).count
  end
  private

  def require_doctor
    unless current_user.role == 'doctor'
      flash[:alert] = "Access restricted to doctors only."
      redirect_to root_path
    end
  end
end
