class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships, id: :uuid do |t|

      t.timestamps
    end
  end
end
