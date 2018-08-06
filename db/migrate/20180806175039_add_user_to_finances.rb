class AddUserToFinances < ActiveRecord::Migration[5.2]
  def change
    add_column :finances, :user_id, :integer
  end
end
