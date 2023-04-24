class ActivityLogSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :action, :record_id, :record_type, :d_at
end
