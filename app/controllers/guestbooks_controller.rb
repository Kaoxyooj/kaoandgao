class GuestbooksController < ApplicationController
  require 'json'

  def index
    @guestbook  = Guestbook.new()
    @book       = Guestbook.all.order("id desc")
  end

  def create
    if Guestbook.create(guestbook_params)
      @flash = "Thanks for signing our guestbook!"
    else
      Rails.logger.error e.messages
    end
    redirect_to guestbooks_path
  end

  private
  def guestbook_params
    params.require(:guestbook).permit(:name, :post)
  end

end
