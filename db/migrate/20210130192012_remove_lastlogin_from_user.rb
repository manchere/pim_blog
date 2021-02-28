class RemoveLastloginFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :last_login
  end
end
