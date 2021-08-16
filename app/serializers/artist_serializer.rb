class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :image
  has_many :concerts
  has_many :followers
end
