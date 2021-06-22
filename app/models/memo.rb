class Memo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :industry
  belongs_to :user


  with_options presence: true do
   validates :title
   validates :selection_status
   validates :body
  end
  
  validates :industry_id, numericality: { other_than: 0 }

  def self.search(search)
    if search 
      Memo.where('title LIKE(?)', "%#{search}%")
    else
      Memo.all
    end
  end
end
