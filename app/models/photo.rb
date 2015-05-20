class Photo < ActiveRecord::Base
  
  belongs_to :user
  validates :photo_url, presence: true
end
