class FanSerializer < ActiveModel::Serializer
  attributes :id, :user, :password, :location
  has_many :attending_concerts
  has_many :followers
end
