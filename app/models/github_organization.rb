class GithubOrganization < ApplicationRecord
  # Associations
  # TO-DO


  # Validates
  validates :name, :description, :url, :github_id, :avatar_url, :html_url, :public_repos, :public_gists, :followers, :following, presence: true


  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end


# access_token = 'your_access_token_here'
# api = GithubApi.new(access_token: access_token)
# api_strategy = GithubApiStrategy.new(api)
# GithubOrganization.fetch_data_from_github_api(api_strategy, 'your_org_name_here')
