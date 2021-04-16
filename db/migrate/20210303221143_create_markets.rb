class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets, id: :uuid do |t|
      t.string :market_name
      t.uuid :user_id
      t.string :market_description
      t.integer :position
      t.integer :score

      t.timestamps
    end
  end
end
