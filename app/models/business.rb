class Business < ActiveRecord::Base
  has_many :menus
  has_many :items
end
