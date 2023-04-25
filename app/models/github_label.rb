class GithubLabel < ApplicationRecord
  # Associations
  # TO-DO

  # Validations
  validates :name, :color, :url, presence: true
  validates :name, :url, uniqueness: { scope: :repository_id }

  # Callbacks
  before_validation :set_url, on: :create

  # Scopes
  scope :by_name, ->(name) { where(name: name) }
  scope :by_color, ->(color) { where(color: color) }

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
