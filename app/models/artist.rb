class Artist < ApplicationRecord
    has_many :concerts 
    has_many :attending_concerts, through: :concerts 
    has_many :followers 

    validates :name, uniqueness: true



    def followers_count # How many followers an artist has 
        self.followers.count 
    end 

    def concerts_count #How much concerts does this artist have upcoming?
        self.concerts.count 
    end 

    def attending_count #How much fans are attending upcoming concerts for this artist?
        self.attending_concerts.count 
    end

    



    





















end
