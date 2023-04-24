class Analytic < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :repository
  belongs_to :search
  belongs_to :tag
  belongs_to :view
  belongs_to :rating
  belongs_to :comment
  belongs_to :activity_log

  # Validations
  validates :user, :repository, presence: true

  # Callbacks
  before_create :set_defaults

  # Scopes
  scope :by_user, ->(user_id) { where(user_id: user_id) }
  scope :by_repository, ->(repository_id) { where(repository_id: repository_id) }
  scope :by_search, ->(search_id) { where(search_id: search_id) }
  scope :by_tag, ->(tag_id) { where(tag_id: tag_id) }
  scope :by_view, ->(view_id) { where(view_id: view_id) }
  scope :by_rating, ->(rating_id) { where(rating_id: rating_id) }
  scope :by_comment, ->(comment_id) { where(comment_id: comment_id) }
  scope :by_activity_log, ->(activity_log_id) { where(activity_log_id: activity_log_id) }

  # Variables and methods
  def self.user_counts
    group(:user_id).count
  end

  def self.repository_counts
    group(:repository_id).count
  end

  def self.search_counts
    group(:search_id).count
  end

  def self.tag_counts
    group(:tag_id).count
  end

  def self.view_counts
    group(:view_id).count
  end

  def self.rating_counts
    group(:rating_id).count
  end

  def self.comment_counts
    group(:comment_id).count
  end

  def self.activity_log_counts
    group(:activity_log_id).count
  end

  def self.analytics_count
    count
  end

  private

  def set_defaults
    self.created_at ||= Time.now
    self.updated_at ||= Time.now
  end
end
