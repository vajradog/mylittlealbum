class Photo < ActiveRecord::Base
  validates_presence_of :photo_url
end