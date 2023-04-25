class GithubLabel < ApplicationRecord
  # Associations
  belongs_to :repository

  # Validations
  validates :name, :color, :url, presence: true
  validates :name, :url, uniqueness: { scope: :repository_id }

  # Callbacks
  before_validation :set_url, on: :create

  # Scopes
  scope :by_name, ->(name) { where(name: name) }
  scope :by_color, ->(color) { where(color: color) }

  # Methods
  def self.fetch_and_create(repo_name)
    # TODO: Implement a method to fetch data from the GitHub API and create GithubLabel records
  end

  private

  def set_url
    self.url = "https://github.com/#{repository.full_name}/labels/#{name.parameterize}"
  end
end
