class AddIndexToFriendship < ActiveRecord::Migration[6.0]
  def change
    add_index :friendships, :follower_id, unique: true
    add_index :friendships, :followee_id, unique: true
  end
end
