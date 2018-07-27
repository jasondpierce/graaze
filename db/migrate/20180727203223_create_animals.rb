class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.integer :tag_number
      t.string :breed
      t.date :dob
      t.string :color

      t.timestamps
    end
  end
end
