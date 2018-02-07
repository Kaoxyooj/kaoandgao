class RsvpsController < ApplicationController

  def index
    @rsvp = Rsvp.new()
  end

  def create
    if Rsvp.create(rsvp_params)
      @flash = "Thanks for signing our guestbook!"
    else
      Rails.logger.error e.messages
    end
    redirect_to rsvps_path
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:first_name, :last_name, :check)
  end

end