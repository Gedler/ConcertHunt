class ChatboxSerializer < ActiveModel::Serializer
  attributes :id, :fan_id, :comment, :fan_name
end
