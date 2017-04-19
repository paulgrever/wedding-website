class GuestController < ApplicationController
  def new
    @rsvp = Guest.new
  end

  def create
    Guest.create(guest_params)
    redirect_to controller: 'guest', action: 'rsvp_completed', params: {name: "#{guest_params[:first_name]} #{guest_params[:last_name]}"} 
  end

  def rsvp_completed
    @name = params[:name]
  end

  private

  def guest_params
    params.require(:guest).permit(:first_name,
                                  :last_name,
                                  :plus_one_first_name,
                                  :plus_one_last_name,
                                  :attending_meet_and_greet,
                                  :lodging,
                                  :attending_wedding,
                                  :allergies,
                                  :comment)
  end
end
