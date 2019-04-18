class WordOfTheDay < ApplicationRecord
  has_many :users, through: :user_words
  validates :word, presence: true, uniqueness: true
  validates :definition, presence: true
end
