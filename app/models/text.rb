class Text < ApplicationRecord
  has_many :genres, through: :text_genres
  has_many :users, through: :user_texts
  belongs_to :author
end
