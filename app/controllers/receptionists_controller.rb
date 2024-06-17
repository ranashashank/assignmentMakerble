class ReceptionistsController < ApplicationController
  before_action :require_user
  before_action :require_receptionist

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to receptionists_path
    else
      render :new
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to receptionists_path
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to receptionists_path
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :date_of_birth)
  end
end

class DoctorsController < ApplicationController
  before_action :require_user
  before_action :require_doctor

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end
end

