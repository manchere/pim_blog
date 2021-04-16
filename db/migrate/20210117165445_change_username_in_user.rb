class ChangeUsernameInUser < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :username, :string, null: true
    change_column :users, :token, :string, null: true
  end
end
