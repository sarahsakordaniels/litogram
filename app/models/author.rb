class Author < ApplicationRecord
  has_many :texts
  validates :name uniqueness: true, presence: true
end
