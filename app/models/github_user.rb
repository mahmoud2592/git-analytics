class GithubUser < ApplicationRecord
  # Associations
  # TO-DO

  # Validations
  validates :user_id, :username, presence: true
  validates :username, uniqueness: true

  # Callbacks
  before_save :set_name_and_email_from_api

  # Scopes
  scope :located_in, ->(location) { where("location ILIKE ?", "%#{location}%") }

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
