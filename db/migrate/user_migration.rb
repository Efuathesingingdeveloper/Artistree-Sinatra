class CreateUsers < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string :name 
      t.string :email
      t.string :password_digest
      t.string :image_url
      t.string :social_media_handles
      t.string :bio
      t.string :intrest
      t.string :location
      t.string :related_achievements
      t.timestamps null: false
    end
  end
end
