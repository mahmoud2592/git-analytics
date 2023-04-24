class RepositoriesTag < ApplicationRecord
  # Associations
  belongs_to :repository
  belongs_to :tag
  has_one :analytics, as: :analyzable

  # Validations
  validates :repository_id, presence: true
  validates :tag_id, presence: true

  # Callbacks
  after_save :update_repository_counters
  after_destroy :update_repository_counters

  def update_repository_counters
    self.repository.update_counters
  end

  # Methods
  def repository_name
    self.repository.name
  end

  def tag_name
    self.tag.name
  end

  # Scopes
  scope :by_repository, ->(repository_id) { where(repository_id: repository_id) }
  scope :by_tag, ->(tag_id) { where(tag_id: tag_id) }
end
