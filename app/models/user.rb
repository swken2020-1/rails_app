class User < ApplicationRecord
    has_secure_password validations: false
    
    validates :name, presence: true, uniqueness: true
    validates :discord_id, presence: true, uniqueness: true
    
    has_many :recruitments, :dependent => :destroy
end
