class Text < ApplicationRecord
  has_many :users, through: :user_texts
  belongs_to :author
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
end
