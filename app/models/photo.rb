class Photo < ActiveRecord::Base
  belongs_to :user
  validates :photo_url, presence: true, format: { with: %r{\.gif|jpg|png}i }
end
