class Text < ApplicationRecord
  has_many :users, through: :user_texts
  belongs_to :author
end
