class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags, id: :uuid do |t|
      t.string :title
      t.string :meta_title
      t.string :slug
      t.text :content, null: false, default: true

      t.timestamps
    end
    add_index :tags, :title, using: :gin
    add_index :tags, :meta_title, using: :gin
  end
end
