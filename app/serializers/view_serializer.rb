class ViewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :repository_id, :ip_address, :device, :duration
end
