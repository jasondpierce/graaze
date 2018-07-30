class AddHerdToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :herd_id, :integer
    add_index :animals, :herd_id
  end
end
