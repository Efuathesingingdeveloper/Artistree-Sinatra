class ArtistPages < ActiveRecord::Migration
    def change
      create_table :artist_pages do |t|
        t.string :name
        t.integer :age
        t.string :image_url
        t.string :social_media_handles
        t.string :bio
        t.string :works
        t.text :description
        t.integer :user_id
        t.string:location
        t.string :interest
        t.timestamps null: false
      end
    end
  end
  