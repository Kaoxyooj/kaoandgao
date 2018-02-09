class RemoveAttendeesFromRsvps < ActiveRecord::Migration[5.1]
  def change
    remove_column :rsvps, :attendees, :string
  end
end
