class GithubOrganization < ApplicationRecord
  has_many :organization_teams, class_name: "GithubOrganizationTeam", dependent: :destroy
  has_many :organization_members, class_name: "GithubOrganizationMember", dependent: :destroy

  validates :name, :description, :url, :github_id, :avatar_url, :html_url, :public_repos, :public_gists, :followers, :following, presence: true


  def self.create_or_update_from_github_api(org_data)
    github_id = org_data['id']
    organization = find_or_initialize_by(github_id: github_id)
    organization.update!(
      name: org_data['login'],
      description: org_data['description'] || '',
      url: org_data['url'],
      avatar_url: org_data['avatar_url'],
      html_url: org_data['html_url'],
      public_repos: org_data['public_repos'].to_i,
      public_gists: org_data['public_gists'].to_i,
      followers: org_data['followers'].to_i,
      following: org_data['following'].to_i
    )
    organization
  end

  def self.fetch_data_from_github_api(api_strategy, org_name)
    org_data = api_strategy.fetch_org_data(org_name)
    create_or_update_from_github_api(org_data)
  end
end


# access_token = 'your_access_token_here'
# api = GithubApi.new(access_token: access_token)
# api_strategy = GithubApiStrategy.new(api)
# GithubOrganization.fetch_data_from_github_api(api_strategy, 'your_org_name_here')
