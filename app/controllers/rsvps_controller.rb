class RsvpsController < ApplicationController

  def index
    @rsvp = Rsvp.new()
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      @flash = "Thanks for signing our guestbook!"
      redirect_to rsvps_path, alert: "Thanks!"
    else
      Rails.logger.error @rsvp.errors.messages
      redirect_to rsvps_path, alert: "An error occurred, please try again."
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:first_name, :last_name, :street_address, :city, :state, :zipcode, :ceremony, :not_attending, :attendees)
  end

end