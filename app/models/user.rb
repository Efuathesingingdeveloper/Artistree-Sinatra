class User < ActiveRecord::Base
    has_many :posts
    has_secure_password
    validates :email, uniqueness: true
    validates :name, :email, :bio, :intrest, :location, :related_achievements, presence: true
end 