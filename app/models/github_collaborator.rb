class GithubCollaborator < ApplicationRecord
  # Associations
  belongs_to :repository
  has_many :github_branches, through: :repository
  # has_many :branches, class_name: "GithubBranch", dependent: :nullify


  # Validations
  validates :username, :repository_id, presence: true
  validates :username, uniqueness: { scope: :repository_id }

  # Callbacks
  before_validation :set_collaborator_id, on: :create

  # Scopes
  scope :with_permission, ->(permission) { where(permission: permission) }

  # Methods
  def self.from_github_data(data, repository)
    collaborator = find_or_initialize_by(collaborator_id: data['id'])
    collaborator.username = data['login']
    collaborator.permission = data['permission']
    collaborator.repository = repository
    collaborator.save!
    collaborator
  end

  private

  def set_collaborator_id
    self.collaborator_id ||= SecureRandom.uuid
  end
end
