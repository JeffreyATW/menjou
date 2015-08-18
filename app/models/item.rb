class Item < ActiveRecord::Base
  belongs_to :business
  has_many :placements
  has_many :categories, :through => :placements
  has_many :menus, :through => :categories
  has_and_belongs_to_many :tags, :uniq => true
end