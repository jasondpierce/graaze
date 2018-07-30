class AddHerdToPasture < ActiveRecord::Migration[5.2]
  def change
    add_column :pastures, :herd_id, :integer
    add_index :pastures, :herd_id
  end
end
