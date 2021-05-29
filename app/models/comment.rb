class Comment < ApplicationRecord
  belongs_to : user
  belongs_to : enterprise

  validates :text, presence: true
end
