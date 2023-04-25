class GithubRepository < ApplicationRecord
  # Associations
  # TO-DO

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
