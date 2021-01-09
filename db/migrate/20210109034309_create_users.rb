class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :token,            null: false
      t.string :slug,             null: false
      t.string :email,            null: false
      t.string :password_digest
      t.string :username,         null: false
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :phone_number,     limit: 30
      t.date :last_login
      t.text :intro
      t.text :profile 

      t.timestamps
    end
    add_index :users, :email,        unique: true
    add_index :users, :phone_number, unique: true
    add_index :users, :token,        unique: true
    add_index :users, :slug,         unique: true
 
  end
end
