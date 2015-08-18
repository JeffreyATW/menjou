class AddFootnotesToMenus < ActiveRecord::Migration
  def self.up
    add_column :menus, :footnotes, :text
  end

  def self.down
    remove_column :menus, :footnotes
  end
end
