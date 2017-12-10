class Video < ApplicationRecord
  validates :youtube_url, uniqueness: true
end
