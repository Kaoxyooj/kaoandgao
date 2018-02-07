class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :check

      t.timestamps
    end
  end
end
