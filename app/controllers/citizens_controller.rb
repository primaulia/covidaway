class CitizensController < ApplicationController
  def register
    @citizen = Citizen.new
  end

  def signin
    @citizen = Citizen.new
  end

  def authenticate
    searched_user = Citizen.find_by_email(params[:citizen][:email])
    # authenticate by pulling the params
    # and comparing with db

    if params[:citizen][:password] == searched_user.password
      # redirect to appointment form
      redirect_to new_citizen_appointment_path(searched_user)
    end
  end

  def create
    new_citizen = Citizen.new(whitelist_params)

    if new_citizen.save
      redirect_to new_citizen_appointment_path(new_citizen)
    else
      # TODO: fill this flow
    end
  end

  def edit
  end

  private

  def whitelist_params
    params.require(:citizen).permit([:email, :password, :postal_code])
  end
end





