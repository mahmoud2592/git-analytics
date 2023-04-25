class GithubCommit < ApplicationRecord
  # associations
  belongs_to :repository

  # validations
  validates :commit_id, presence: true, uniqueness: true
  validates :commit_message, :author, :timestamp, :url, presence: true

  # callbacks
  before_save :fetch_github_data

  # scopes
  scope :by_author, ->(author) { where(author: author) }
  scope :by_repository, ->(repository) { where(repository_id: repository.id) }

  # instance methods
  def fetch_github_data
    # fetch commit data from Github API using the commit's URL
    # and update the commit attributes with the fetched data
  end

  # class methods
  def self.fetch_and_create(commit_id)
    # fetch commit data from Github API using the commit ID
    # create a new commit record with the fetched data
  end
end
