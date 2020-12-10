class User < ApplicationRecord
    
    validates :name, presence: true, length: { maximum: 20, allow_blank: true }, uniqueness: true
    validates :discord_id, presence: true, length: { maximum: 20, allow_blank: true }
    has_secure_password
    
    validates :password, presence: true, length: { minimum: 6 }
#    validates :name, presence: true, uniqueness: true
#    validates :discord_id, presence: true, uniqueness: true
#    validates :password_confirmation, presence: true
    
    has_many :recruitments, :dependent => :destroy
end
