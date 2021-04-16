class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.string :slug
      t.text :descriptions
      t.string :online
      t.integer :position
      t.integer :score
      t.float :price
      t.uuid :market_id

      t.timestamps
    end
  end
end
