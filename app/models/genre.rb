class Genre < ApplicationRecord
  has_many  :texts, through: :text_genres
  has_many :authors, through: :texts
end
