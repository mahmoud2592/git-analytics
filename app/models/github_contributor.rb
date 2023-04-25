class GithubContributor < ApplicationRecord
  # Associations
  # TO-DO

  # Scopes
  scope :by_contributions, -> { order(number_of_contributions: :desc) }
  scope :by_username, -> { order(username: :asc) }

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
