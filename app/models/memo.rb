class Memo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :industry
  belongs_to :user


  with_options presence: true do
   validates :title
   validates :body
  end

  validates :industry_id, numericality: { other_than: 1 }

end
