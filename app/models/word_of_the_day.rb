class WordOfTheDay < ApplicationRecord
  has_many :users, through: :user_words
end
