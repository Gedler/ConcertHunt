class AttendingConcert < ApplicationRecord
    belongs_to :fan 
    belongs_to :concert 


    #validates :concert_id, uniqueness: {message: "You're already going to this concert, try a new one :)"}
end
