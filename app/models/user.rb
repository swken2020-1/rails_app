class User < ApplicationRecord
    has_secure_password
    
    validates :name, presence: true
    validates :discord_id, presence: true
    
    has_many :recruitments
end
