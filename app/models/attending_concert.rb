class AttendingConcert < ApplicationRecord
    belongs_to :fan 
    belongs_to :concert 


    validates :fan_id, uniqueness: {message: "You're already going to this concert, try a new one :)"}
end
