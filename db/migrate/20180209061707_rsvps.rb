class Rsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :state
      t.string :zipcode
      t.boolean :ceremony
      t.boolean :reception
      t.boolean :both
      t.boolean :not_attending
      t.string :attendees

      t.timestamps
    end
  end
end