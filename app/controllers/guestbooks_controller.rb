class GuestbooksController < ApplicationController
  before_action :new, only: [:index, :create]

  def index
  end

  def create
    if @guestbook.create(guestbook_params)
      p "Saved!"
    else
      p "Error Saving!"
    end
  end

  def new
    @guestbook = Guestbook.new()
  end

  private
  def guestbook_params
    params.require(:guestbook).permit(:name, :post)
  end

end
