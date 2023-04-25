class RepositorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :programming_language, :license, :url, :default_branch, :stars_count, :forks_count, :watchers_count, :issues_count, :pull_requests_count, :commit_count
end
