class GithubPullRequest < ApplicationRecord
  # Associations
  # TO-DO

  # Validations
  validates :pull_request_id, presence: true, uniqueness: true
  validates :title, presence: true
  validates :status, presence: true

  # Scopes
  scope :open, -> { where(status: 'open') }
  scope :closed, -> { where(status: 'closed') }
  scope :merged, -> { where(status: 'merged') }

  # Callbacks
  after_create :fetch_github_data

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
