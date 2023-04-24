class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :category, :message
end
