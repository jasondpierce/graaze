class CreateFinances < ActiveRecord::Migration[5.2]
  def change
    create_table :finances do |t|
      t.string :item
      t.string :category
      t.decimal :amount
      t.string :pay_type
      t.string :tran_type

      t.timestamps
    end
  end
end
