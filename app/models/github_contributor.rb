class GithubContributor < ApplicationRecord
  belongs_to :repository

  validates :username, :profile_link, :url, :repository_id, presence: true
  validates :username, uniqueness: { scope: :repository_id }

  scope :by_contributions, -> { order(number_of_contributions: :desc) }
  scope :by_username, -> { order(username: :asc) }

  def self.from_github_contributor(github_contributor, repository_id)
    contributor = where(contributor_id: github_contributor[:id], repository_id: repository_id).first_or_initialize
    contributor.username = github_contributor[:login]
    contributor.profile_link = github_contributor[:html_url]
    contributor.number_of_contributions = github_contributor[:contributions]
    contributor.url = github_contributor[:url]
    contributor.save!
    contributor
  end

  def self.get_contributors(repository)
    response = GithubApi.get_contributors(repository.owner.username, repository.name)
    response.map { |contributor| from_github_contributor(contributor, repository.id) }
  end
end
