class CreatePostComments < ActiveRecord::Migration[6.0]
  def change
    create_table :post_comments, id: :uuid do |t|
      t.uuid :post_id,       null: false
      t.uuid :parent_id,     null: true
      t.string :title
      t.string :published
      t.text :content,       null: false, default: true

      t.timestamps
    end
    add_index :post_comments, :parent_id
    add_index :post_comments, :title, using: :gin
  end
end
