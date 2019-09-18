class MessageSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :receiver_id, :conversation_id, :message
end
