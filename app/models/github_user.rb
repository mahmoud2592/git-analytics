class GithubUser < ApplicationRecord
  # Associations
  has_many :repositories_as_branches, class_name: "GithubBranch", foreign_key: :repository_id
  has_many :repositories_as_collaborators, class_name: "GithubCollaborator", foreign_key: :repository_id
  has_many :repositories_as_commits, class_name: "GithubCommit", foreign_key: :repository_id
  has_many :repositories_as_contributors, class_name: "GithubContributor", foreign_key: :repository_id
  has_many :forked_github_forks, class_name: "GithubFork", foreign_key: :forked_from_repository_id
  has_many :original_github_forks, class_name: "GithubFork", foreign_key: :forked_to_repository_id
  has_many :repositories_as_issues, class_name: "GithubIssue", foreign_key: :repository_id
  has_many :repositories_as_labels, class_name: "GithubLabel", foreign_key: :repository_id
  has_many :repositories_as_milestones, class_name: "GithubMilestone", foreign_key: :repository_id
  has_many :organizations_as_members, class_name: "GithubOrganizationMember", foreign_key: :organization_id
  has_many :organizations_as_teams, class_name: "GithubOrganizationTeam", foreign_key: :organization_id
  has_many :repositories_as_pull_requests, class_name: "GithubPullRequest", foreign_key: :repository_id
  has_many :repositories_as_releases, class_name: "GithubRelease", foreign_key: :repository_id

  # Validations
  validates :user_id, :username, presence: true
  validates :username, uniqueness: true

  # Callbacks
  before_save :set_name_and_email_from_api

  # Scopes
  scope :located_in, ->(location) { where("location ILIKE ?", "%#{location}%") }

  # Instance Methods
  def set_name_and_email_from_api
    return unless user_id.present?

    api_data = GithubApiStrategy.fetch_user_data(user_id)
    self.attributes = {
      name: api_data.name,
      email: api_data.email,
      location: api_data.location || GithubApiStrategy.default_location,
      bio: api_data.bio,
      url: api_data.url
    }
  end

  # Class Methods
  def self.api_strategy
    GithubApiStrategy
  end
end
