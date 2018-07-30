class CreatePastures < ActiveRecord::Migration[5.2]
  def change
    create_table :pastures do |t|
      t.date :date_grazed
      t.integer :available_forage
      t.integer :size

      t.timestamps
    end
  end
end
