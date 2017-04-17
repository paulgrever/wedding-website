class GuestController < ApplicationController
  def new
    @rsvp = Guest.new
  end

  def create
    Guest.create(guest_params)
    redirect_to :rsvp_completed
  end

  def rsvp_completed
    binding.pry
  end

  private

  def guest_params
    params.require(:guest).permit(:first_name, :last_name)
  end
end
