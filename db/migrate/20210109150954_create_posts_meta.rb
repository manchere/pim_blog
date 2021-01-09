class CreatePostsMeta < ActiveRecord::Migration[6.0]
  def change
    create_table :posts_meta, id: :uuid do |t|
      t.uuid :post_id, null: false
      t.string :key
      t.text :content, null: false, default: true
    end
  end
end
