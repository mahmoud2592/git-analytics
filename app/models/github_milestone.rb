class GithubMilestone < ApplicationRecord
  belongs_to :repository
  has_many :issues, class_name: "GithubIssue", dependent: :nullify


  validates :title, :description, :status, :url, presence: true
  validates :milestone_id, uniqueness: true

  scope :open, -> { where(status: "open") }
  scope :closed, -> { where(status: "closed") }

  before_validation :set_url

  def self.import_from_github(milestone_data, repository_id)
    milestone = find_or_initialize_by(milestone_id: milestone_data["id"])
    milestone.title = milestone_data["title"]
    milestone.description = milestone_data["description"]
    milestone.due_date = milestone_data["due_on"]
    milestone.status = milestone_data["state"]
    milestone.url = milestone_data["html_url"]
    milestone.repository_id = repository_id
    milestone.save!
    milestone
  end

  private

  def set_url
    self.url ||= "https://github.com/#{repository.full_name}/milestone/#{milestone_id}"
  end
end
