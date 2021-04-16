class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts, id: :uuid do |t|
      t.uuid :author_id,         null: false
      t.uuid :parent_id,         null: true
      t.string :title
      t.string :meta_title     
      t.string :slug,            null: false
      t.text :summary
      t.boolean :published,      null: false
      t.date :published_at
      t.text :content,           null: false, default: true

      t.timestamps
    end
      add_index :posts, :author_id
      add_index :posts, :title, using: :gin
      add_index :posts, :parent_id
  end
end
