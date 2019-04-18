class ArtWork < ApplicationRecord
  belongs_to :artist
  validates :title, presence: true, uniqueness: true
  validates :image_link, presence: true
end
