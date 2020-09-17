class Post < ActiveRecord::Base
    belongs_to :user
    validates :work, :description, :link, presence: true

   end
   