class AttendingConcertSerializer < ActiveModel::Serializer
  attributes :id, :fan_id, :concert_id
end
