class AnalyticSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :repository_id, :search_id, :tag_id, :view_id, :rating_id, :comment_id, :activity_log_id
end
