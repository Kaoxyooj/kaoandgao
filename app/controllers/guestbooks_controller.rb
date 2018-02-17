class GuestbooksController < ApplicationController
  require 'json'

  def index
    @guestbook  = Guestbook.new()
    @book       = Guestbook.all.order("id desc")
  end

  def create
    @guestbook = Guestbook.new(guestbook_params)
    if @guestbook.save
      redirect_to guestbooks_path, alert: "Thanks for signing our guestbook!"
    else
      Rails.logger.error @guestbook.errors.messages
      redirect_to guestbooks_path, alert: "An error occurred, please try again."
    end
  end

  private
  def guestbook_params
    params.require(:guestbook).permit(:name, :post)
  end

end
