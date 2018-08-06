class AddUserToPastures < ActiveRecord::Migration[5.2]
  def change
    add_column :pastures, :user_id, :integer
  end
end
