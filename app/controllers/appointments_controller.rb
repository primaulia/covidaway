class AppointmentsController < ApplicationController
  before_action :set_instances

  def new
  end

  def create
    the_clinic = Clinic.find(params[:appointment][:clinic_id])
    @new_appt.clinic = the_clinic    

    if @new_appt.save
      redirect_to clinic_path(the_clinic)
    else
      # TODO: build invalid flow here
    end
  end

  private

  def set_instances
    # 3 instances ==> 1 citizen + random clinic + 1 blank appt
    @new_appt = Appointment.new
    @citizen = Citizen.find(params[:citizen_id])
    @new_appt.citizen = @citizen
  end
end
