class Concert < ApplicationRecord
    belongs_to :artist 
    has_many :attending_concerts
end
