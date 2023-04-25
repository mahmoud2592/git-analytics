class GithubWatcher < ApplicationRecord
  # Associations
  # TO-DO

  # Validations
  validates :username, presence: true, uniqueness: { scope: :repository_id }

  # Callbacks
  after_create :fetch_data_from_github_api

  # Scopes
  scope :by_username, ->(username) { where(username: username) }

  # Methods
  def fetch_data_from_github_api
    # implementation to fetch data from GitHub API and update associated models
  end
end
