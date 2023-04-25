class GithubApiStrategy
  def initialize(api)
    @api = api
  end

  def fetch_repository_data(repository_name)
    api_data = @api.fetch_data("repos/#{repository_name}")
    GithubRepository.from_api_data(api_data)
  end

  def fetch_user_data(user_id)
    api_data = @api.fetch_data("users/#{user_id}")
    GithubUser.from_api_data(api_data)
  end

  def fetch_org_data(org_name)
    api_data = @api.fetch_data("orgs/#{org_name}")
    api_data
  end

  def fetch_team_data(team_id)
    api_data = @api.fetch_data("teams/#{team_id}")
    GithubTeam.from_api_data(api_data)
  end

  def fetch_team_members(team_id)
    api_data = @api.fetch_data("teams/#{team_id}/members")
    api_data.map { |member| GithubUser.from_api_data(member) }
  end

  def fetch_org_teams(org_name)
    api_data = @api.fetch_data("orgs/#{org_name}/teams")
    api_data.map { |team| GithubOrganizationTeam.from_api_data(team) }
  end
end
