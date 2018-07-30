class AddPastureToHerd < ActiveRecord::Migration[5.2]
  def change
    add_column :herds, :pasture_id, :integer
    add_index :herds, :pasture_id
  end
end
