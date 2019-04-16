class Author < ApplicationRecord
  has_many :texts
  has_many :genres, through: :text
end
