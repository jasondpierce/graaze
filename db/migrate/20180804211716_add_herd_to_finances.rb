class AddHerdToFinances < ActiveRecord::Migration[5.2]
  def change
    add_column :finances, :herd_id, :integer
    add_index :finances, :herd_id
  end
end
