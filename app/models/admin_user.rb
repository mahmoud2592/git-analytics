class AdminUser < ApplicationRecord
  has_secure_password

  # Associations
  has_many :activity_logs, as: :user
  has_many :repositories, foreign_key: :owner_id
  has_many :feedbacks, foreign_key: :user_id
  has_many :ratings, foreign_key: :user_id
  has_many :searches, foreign_key: :user_id

  # Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }

  # Callbacks
  before_save :downcase_email

  # Scopes
  scope :admins, -> { where(is_admin: true) }

  # Virtual attributes
  attr_accessor :password_confirmation

  private

  def downcase_email
    self.email = email.downcase
  end
end
