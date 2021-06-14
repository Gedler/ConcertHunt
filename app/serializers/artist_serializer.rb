class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_many :concerts
  has_many :followers
end
