class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :venue, :location, :artist_id, :price, :date
  has_many :attending_concerts
end
