class Fan < ApplicationRecord 
    has_secure_password
    has_many :attending_concerts
    has_many :concerts, through: :attending_concerts
    has_many :followers

    validates :user, uniqueness: true 
    validates :password, length: {in: 6..15, message: "must be between 6-15 characters"}
end
