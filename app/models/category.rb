class Category < ActiveRecord::Base
  belongs_to :menu
  has_many :placements, :include => :item
  has_many :items, :through => :placements
end
