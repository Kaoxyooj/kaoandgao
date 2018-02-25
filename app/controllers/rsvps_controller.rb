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

  def mgh
    check_password
    cookies.signed[:pw_true] = true if @checker == @pw
    return redirect_to check_password_path if cookies.signed[:pw_true].blank?
    @rsvps = Rsvp.all.order(:first_name)
    @total = @rsvps.map(&:attendees).sum
  end

  def mgh_checklist
    @rsvp = Rsvp.find(params[:id])
    @rsvp.update(rsvp_params)
    @rsvp.save
  end

  private

  def check_password
    @pw ||= params[:password]
    @check = Password.find(1).digest
    @checker = BCrypt::Password.new(@check)
  end

  def rsvp_params
    params.require(:rsvp).permit(:first_name, :last_name, :street_address, :city, :state, :zipcode, :ceremony, :not_attending, :attendees)
  end

end