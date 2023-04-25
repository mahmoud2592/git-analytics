class GithubCollaborator < ApplicationRecord
  # Associations
  # TO-DO

  # Validations
  validates :username, :repository_id, presence: true
  validates :username, uniqueness: { scope: :repository_id }

  # Callbacks
  before_validation :set_collaborator_id, on: :create

  # Scopes
  scope :with_permission, ->(permission) { where(permission: permission) }

  # Methods
  def self.from_github_api(api_response, api_strategy = GithubApiStrategy.new(GithubApi.new))
    # api_strategy.fetch_repository_data(api_response)
  end

  private

  def set_collaborator_id
    self.collaborator_id ||= SecureRandom.uuid
  end
end
