class Placement < ActiveRecord::Base
  belongs_to :category
  belongs_to :item, :include => :tags
  has_one :menu, :through => :category
end