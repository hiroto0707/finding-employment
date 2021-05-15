class Enterprise < ApplicationRecord
  belongs_to :user
  belongs_to :industry

  with_options presence: true do
    validates :text
    validates :theme
  end
   
  validates :industry_id, numericality: { other_than: 0 }
end
