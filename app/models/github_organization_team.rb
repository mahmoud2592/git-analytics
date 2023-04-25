class GithubOrganizationTeam < ApplicationRecord
  # Associations
  # TO-DO

  # Validations
  validates :name, presence: true
  validates :url, presence: true

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
