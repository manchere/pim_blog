class AddDeviseTrackableToUser < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :current_sign_in_at, :datetime
      add_column :users, :last_sign_in_at, :datetime
      add_column :users, :current_sign_in_ip, :inet
      add_column :users, :last_sign_in_ip, :inet
  end
end
