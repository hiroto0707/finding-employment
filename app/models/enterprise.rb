class Enterprise < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :industry


  with_options presence: true do
   validates :title
   validates :text
   validates :theme
  end
   
  validates :industry_id, numericality: { other_than: 0 }

  #def self.search(search)
    #if search

    #else
      #all
    #end
end
