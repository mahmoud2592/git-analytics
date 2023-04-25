class CommitSerializer < ActiveModel::Serializer
  attributes :id, :sha, :author_name, :author_email, :message, :committed_date, :repository_id, :day, :week, :month
end
