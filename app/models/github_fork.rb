class GithubFork < ApplicationRecord
  belongs_to :forked_from_repository, class_name: 'GithubRepository'
  belongs_to :forked_to_repository, class_name: 'GithubRepository'


  validates :forked_from_repository_id, :forked_to_repository_id, presence: true
  validates :forked_from_repository_id, uniqueness: { scope: :forked_to_repository_id }

  scope :by_forked_from_repository_id, ->(id) { where(forked_from_repository_id: id) }
  scope :by_forked_to_repository_id, ->(id) { where(forked_to_repository_id: id) }


end
