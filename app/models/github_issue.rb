class GithubIssue < ApplicationRecord
  # Associations
  belongs_to :github_repository, class_name: "GithubRepository", foreign_key: "repository_id"
  has_many :comments, as: :commentable

  # Callbacks
  after_create :fetch_issue_data

  # Validations
  validates :issue_id, uniqueness: { scope: :repository_id }
  validates :title, :status, :timestamp, :url, presence: true

  # Scopes
  scope :open, -> { where(status: "open") }
  scope :closed, -> { where(status: "closed") }

  # Methods
  def self.fetch_repository_issues(repository)

  end

  private

  def fetch_issue_data

  end
end
