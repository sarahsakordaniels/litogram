class TextGenre < ApplicationRecord
  belongs_to :text
  belongs_to :genre
end
