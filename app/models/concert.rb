class Concert < ApplicationRecord
    belongs_to :artist 
    has_many :attending_concerts
    has_many :fans, through: :attending_concerts 


    


    def people_attending #How much people are going this one concert 
        self.attending_concerts.count 
    end 

    def fan_usernames # the usernames of all fans attending this concert
        self.fans.each do |fan|
            puts "#{fan.user}"
        end 
    end
    
    def fan_locations # the locations of all fans attending this concert
        self.fans.each do |fan|
            puts "#{fan.location}"
        end
    end 
    
   

     
    
    
    
    
    
    
    


    






    
end


# Can do this on React interating through the array and returning the concert card