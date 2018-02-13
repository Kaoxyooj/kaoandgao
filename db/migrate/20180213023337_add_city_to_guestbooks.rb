class AddCityToGuestbooks < ActiveRecord::Migration[5.1]
  def change
    add_column :guestbooks, :city, :string
  end
end
