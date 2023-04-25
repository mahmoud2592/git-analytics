class GithubBranch < ApplicationRecord
  belongs_to :repository

  validates :name, :last_commit, :url, presence: true
  validates :name, uniqueness: { scope: :repository_id }

  after_create :fetch_github_data

  scope :by_name, ->(name) { where(name: name) }
  scope :by_last_commit, ->(last_commit) { where(last_commit: last_commit) }

  # Class methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    api_strategy.fetch_repository_data(api_response)
  end
end
