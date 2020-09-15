class CreatePosts < ActiveRecord::Migration
    def change
    create_table :posts do |t|
        t.string :work
        t.text :description
        t.string :link
        t.integer :user_id
        t.timestamps null: false    
    end 
    end 
    end 