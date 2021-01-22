class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions, id: :uuid do |t|
      t.string :mtn_momo_user_id
      t.string :stripe_user_id
      t.boolean :active
      t.uuid :user_id
      
      t.timestamps
    end
  end
end
