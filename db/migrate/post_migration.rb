class CreatePosts < ActiveRecord::Migration
def change
    create_table :artist_pages do |t|
t.string :works
t.text :description
t.string :link
t.timestamps null: false    
end 
end 
end 