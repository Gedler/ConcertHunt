class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :venue, :location, :image, :date, :price, :artist_id
  has_many :attending_concerts
end
