class AddUserToHerds < ActiveRecord::Migration[5.2]
  def change
    add_column :herds, :user_id, :integer
  end
end
