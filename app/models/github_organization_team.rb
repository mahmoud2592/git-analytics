class GithubOrganizationTeam < ApplicationRecord
  belongs_to :organization
  has_many :team_memberships, dependent: :destroy
  has_many :members, through: :team_memberships

  validates :name, presence: true
  validates :url, presence: true

  def self.from_api_data(api_data)
    GithubOrganizationTeam.new(
      name: api_data['name'],
      url: api_data['html_url'],
      description: api_data['description'],
      permission: api_data['permission'],
      team_id: api_data['id']
      # add any additional attributes you want to fetch from the API response
    )
  end
end
