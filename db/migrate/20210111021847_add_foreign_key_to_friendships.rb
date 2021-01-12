class AddForeignKeyToFriendships < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :friendships, :users, column: :follower_id, primary_key: 'id'
    add_foreign_key :friendships, :users, column: :followee_id, primary_key: 'id'
  end
end
