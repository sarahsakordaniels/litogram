class UserWord < ApplicationRecord
   belongs_to :user
   belongs_to :word_of_the_day
end
