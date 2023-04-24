class User < ApplicationRecord
  include Geocodable

  has_secure_password

  has_many :activity_logs, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :users_repositories, dependent: :destroy
  has_many :repositories, through: :users_repositories
  has_many :searches, dependent: :destroy
  has_many :views, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
            uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true
  validates :role, presence: true, inclusion: { in: %w[admin user] }

  enum role: { admin: 0, user: 1 }

  normalize_attribute :name, :email, :bio, :location, squish: true

  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  validates :bio, length: { maximum: 500 }
  validates :location, length: { maximum: 100 }
  validates_url_format_of :twitter_url, :facebook_url, :linkedin_url, :github_url, :website_url, allow_blank: true, parser: URI::DEFAULT_PARSER

  has_attached_file :profile_picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profile_picture, content_type: /\Aimage\/.*\z/

  scope :admins, -> { where(role: :admin) }
  scope :with_comments, -> { joins(:comments).distinct }
  scope :with_repositories, -> { joins(:repositories).distinct }

  def can_edit_repository?(repository)
    repositories.include?(repository)
  end

  def upvoted_comments
    comments.where("upvotes > 0")
  end

  def downvoted_comments
    comments.where("downvotes > 0")
  end

  def vote_for_comment(comment, direction)
    if direction == :upvote
      comment.increment(:upvotes)
    elsif direction == :downvote
      comment.increment(:downvotes)
    end
  end

  private

  def downcase_email
    self.email = email.downcase
  end
end
