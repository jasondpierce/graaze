class AddDateExposedToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :date_exposed, :date
  end
end
