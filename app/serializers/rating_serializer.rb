class RatingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :repository_id, :rating, :feedback
end
