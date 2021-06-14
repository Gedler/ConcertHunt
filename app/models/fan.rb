class Fan < ApplicationRecord 
    has_secure_password
    has_many :attending_concerts,  dependent: :destroy
    has_many :concerts, through: :attending_concerts
    has_many :followers, dependent: :destroy 
    has_many :artists, through: :followers 

    validates :user, uniqueness: true 
    validates :password, length: {in: 6..15, message: " Password must be between 6-15 characters"}



    def following # Who is this fan following?
        self.artists.each do |artist|
            puts "#{artist.name}"
        end
end

    def following_count # The amount of artists this fan is following
        self.artist.count 
    end 

    def attending_concerts #How many upcoming concerts is this fan going to?
        self.attending_concerts.count 
    end

    def attending_concerts_info #What concerts is this fan going to?
        self.concerts.each do |concert|
            puts "#{self.user} is going to #{concert.venue} on #{concert.date}!"
        end
    end 

end 


