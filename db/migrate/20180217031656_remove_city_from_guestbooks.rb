class RemoveCityFromGuestbooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :guestbooks, :city, :string
  end
end
