class RemoveReceptionFromRsvps < ActiveRecord::Migration[5.1]
  def change
    remove_column :rsvps, :reception, :boolean
  end
end
