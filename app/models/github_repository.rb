require 'net/http'
require 'json'

class GithubRepository < ApplicationRecord
  # Associations
  has_many :branches, class_name: "GithubBranch", dependent: :destroy
  has_many :collaborators, class_name: "GithubCollaborator", dependent: :destroy
  has_many :commits, class_name: "GithubCommit", dependent: :destroy
  has_many :contributors, class_name: "GithubContributor", dependent: :destroy
  has_many :forks, class_name: "GithubFork", dependent: :destroy
  has_many :issues, class_name: "GithubIssue", dependent: :destroy
  has_many :labels, class_name: "GithubLabel", dependent: :destroy
  has_many :milestones, class_name: "GithubMilestone", dependent: :destroy
  has_many :pull_requests, class_name: "GithubPullRequest", dependent: :destroy
  has_many :releases, class_name: "GithubRelease", dependent: :destroy

  # Validations
  validates :name, :stars, :forks, :url, :created_at, :updated_at, presence: true

  # Callbacks
  before_save :set_default_language

  # Scopes
  scope :by_language, ->(language) { where(language: language) }
  scope :recently_updated, -> { order(updated_at: :desc) }

  # Class methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    api_strategy.fetch_repository_data(api_response)
  end

  private

  # Instance methods
  def set_default_language
    self.language ||= "Unknown"
  end
end
