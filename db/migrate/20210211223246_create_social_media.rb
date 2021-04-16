class CreateSocialMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :social_media, id: :uuid do |t|
      t.string :platform
      t.string :username
      t.string :link

      t.timestamps
    end
  end
end
