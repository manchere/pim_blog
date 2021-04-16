class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories, id: :uuid do |t|
      t.uuid :parent_id,       null: true
      t.string :title
      t.string :meta_title
      t.string :slug,          null: false
      t.text :content,         null: false, default: true

      t.timestamps
    end
    add_index :categories, :title, using: :gin
    add_index :categories, :meta_title, using: :gin 
  end
end
