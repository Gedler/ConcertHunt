class Artist < ApplicationRecord
    has_many :concerts 
    has_many :attendingconcerts, through: :concerts 
    has_many :followers 

    validates :name, uniqueness: true






















end
