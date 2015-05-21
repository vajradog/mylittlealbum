class User < ActiveRecord::Base
  has_secure_password validations: false
  validates_presence_of :full_name, :password
  validates_uniqueness_of :email
  has_many :photos,-> { order 'created_at DESC' }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end