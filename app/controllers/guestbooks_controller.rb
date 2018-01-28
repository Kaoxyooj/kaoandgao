class GuestbooksController < ApplicationController
  before_action :new, only: [:index, :create, :show]

  def show
  end

  def index
  end

  def create
    p guestbook_params
    if @guestbook.save(guestbook_params)
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
