class UserText < ApplicationRecord
  belongs_to :user
  belongs_to :text
end
