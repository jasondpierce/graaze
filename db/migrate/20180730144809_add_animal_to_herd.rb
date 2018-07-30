class AddAnimalToHerd < ActiveRecord::Migration[5.2]
  def change
    add_column :herds, :animal_id, :integer
    add_index :herds, :animal_id
  end
end
