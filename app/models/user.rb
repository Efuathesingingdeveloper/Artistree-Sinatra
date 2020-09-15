class User < ActiveRecord::Base
    has_secure_password
    belongs_to :artist_page
end 