class GithubFork < ApplicationRecord
  # Associations
  # TO-DO


  # Validates
  validates :forked_from_repository_id, :forked_to_repository_id, presence: true
  validates :forked_from_repository_id, uniqueness: { scope: :forked_to_repository_id }

  # Scopes
  scope :by_forked_from_repository_id, ->(id) { where(forked_from_repository_id: id) }
  scope :by_forked_to_repository_id, ->(id) { where(forked_to_repository_id: id) }

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end
end
