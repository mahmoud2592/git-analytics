class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :repository_id, :body, :upvotes, :downvotes, :d_at
end
