class Menu < ActiveRecord::Base
  belongs_to :business
  has_many :categories, :include => :placements
  has_many :placements, :through => :categories

  def footnotes
    if self["footnotes"]
      self["footnotes"]
    else
      self.business.footnotes
    end
  end

  def tags
    self.placements.find(:all, :include => [{:item => :tags}]).collect {|placement| placement.item.tags}.flatten.uniq
  end
end