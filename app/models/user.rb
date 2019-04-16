class User < ApplicationRecord
  has_many :word_of_the_days, through: :user_words
  has_many :texts, through: :user_texts
end
