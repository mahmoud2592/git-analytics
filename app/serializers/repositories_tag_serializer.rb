class RepositoriesTagSerializer < ActiveModel::Serializer
  attributes :id, :repository_id, :tag_id
end
