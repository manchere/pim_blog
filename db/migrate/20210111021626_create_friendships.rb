class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships, id: :uuid do |t|
      t.uuid :follower_id
      t.uuid :followee_id
    end
  end
end
