class CreateGuestbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :guestbooks do |t|
      t.string :name
      t.string :post
      t.string :text

      t.timestamps
    end
  end
end
