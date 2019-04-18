class Artist < ApplicationRecord
  has_many :art_works
  validates :name, uniqueness: true, presence: true

end
