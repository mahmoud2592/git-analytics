class GithubOrganizationMember < ApplicationRecord
  # Associations
  # TO-DO


  # Validations
  validates :username, presence: true, uniqueness: { scope: :organization_id }

  # Callbacks
  after_create :fetch_github_data


  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
