class RemoveBothFromRsvps < ActiveRecord::Migration[5.1]
  def change
    remove_column :rsvps, :both, :boolean
  end
end
