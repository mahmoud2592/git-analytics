class Repository < ApplicationRecord
  # Associations
  has_and_belongs_to_many :users
  has_many :commits, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :views, dependent: :destroy
  has_and_belongs_to_many :tags
  has_many :analytics, dependent: :destroy

  # Validations
  validates :name, presence: true, length: { maximum: 100 }
  validates :url, presence: true, length: { maximum: 255 }, format: { with: URI.regexp }, uniqueness: { case_sensitive: false }
  validates :programming_language, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 500 }

  # Callbacks
  before_validation :add_https_to_url
  after_create :update_contributions_count

  # Scopes
  scope :by_language, ->(language) { where(programming_language: language) }
  scope :by_name, ->(name) { where("name ILIKE ?", "%#{name}%") }
  scope :by_tag, ->(tag) { joins(:tags).where(tags: { name: tag }) }
  scope :with_positive_feedback, -> { joins(:ratings).where("ratings.rating > 3").distinct }
  scope :with_negative_feedback, -> { joins(:ratings).where("ratings.rating < 3").distinct }

  # Variables
  @@contributions_count = 0

  # Methods
  def star(user)
    self.users << user unless self.users.include?(user)
  end

  def unstar(user)
    self.users.delete(user)
  end

  def add_tag(tag)
    self.tags << tag unless self.tags.include?(tag)
  end

  def remove_tag(tag)
    self.tags.delete(tag)
  end

  def average_rating
    self.ratings.average(:rating).to_f.round(1)
  end

  def positive_feedback_count
    self.ratings.where("rating > 3").count
  end

  def negative_feedback_count
    self.ratings.where("rating < 3").count
  end

  private

  def add_https_to_url
    self.url = "https://#{url}" unless url =~ /\Ahttps?:\/\//
  end

  def update_contributions_count
    @@contributions_count += 1
  end
end
