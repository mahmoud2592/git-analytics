class GithubCommit < ApplicationRecord
  # Associations
  # TO-DO

  # validations
  validates :commit_id, presence: true, uniqueness: true
  validates :commit_message, :author, :timestamp, :url, presence: true

  # callbacks
  before_save :fetch_github_data

  # scopes
  scope :by_author, ->(author) { where(author: author) }
  scope :by_repository, ->(repository) { where(repository_id: repository.id) }

  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
