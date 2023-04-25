class GithubMilestone < ApplicationRecord
  # Associations
  # TO-DO

  # Validations
  validates :title, :description, :status, :url, presence: true
  validates :milestone_id, uniqueness: true

  #Scopes
  scope :open, -> { where(status: "open") }
  scope :closed, -> { where(status: "closed") }

  #Callbacks
  before_validation :set_url

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
