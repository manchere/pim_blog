class AddLastPasswordUpdated < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_password_updated, :datetime
  end
end
