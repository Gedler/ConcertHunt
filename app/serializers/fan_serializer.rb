class FanSerializer < ActiveModel::Serializer
  attributes :id, :user, :location, :pronouns, :password, :image
  has_many :attending_concerts
  has_many :followers
end
