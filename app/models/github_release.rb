class GithubRelease < ApplicationRecord
  # Associations
  # TO-DO

  validates :tag_name, :body, :html_url, :published_at, presence: true
  validates :tag_name, uniqueness: true

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
