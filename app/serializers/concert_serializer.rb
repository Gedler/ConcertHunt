class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :venue, :location, :artist_id, :price 
  has_many :attending_concerts
end
