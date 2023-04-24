class UsersRepositorySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :repository_id, :date_added, :last_viewed
end
