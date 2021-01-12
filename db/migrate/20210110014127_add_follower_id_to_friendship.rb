class AddFollowerIdToFriendship < ActiveRecord::Migration[6.0]
  def change
    add_column :friendships, :followee_id, :uuid
    add_column :friendships, :follower_id, :uuid
  end
end
