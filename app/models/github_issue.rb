class GithubIssue < ApplicationRecord
  # Associations
  # TO-DO

  # Callbacks
  after_create :fetch_issue_data

  # Validations
  validates :issue_id, uniqueness: { scope: :repository_id }
  validates :title, :status, :timestamp, :url, presence: true

  # Scopes
  scope :open, -> { where(status: "open") }
  scope :closed, -> { where(status: "closed") }

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
