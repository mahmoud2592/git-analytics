class GithubOrganizationMember < ApplicationRecord
  belongs_to :organization
  validates :username, presence: true, uniqueness: { scope: :organization_id }
  after_create :fetch_github_data

  private

  def fetch_github_data
    # TODO: Implement method to fetch GitHub API data for this member
  end
end
