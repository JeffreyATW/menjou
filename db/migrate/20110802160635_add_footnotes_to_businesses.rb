class AddFootnotesToBusinesses < ActiveRecord::Migration
  def self.up
    add_column :businesses, :footnotes, :text
  end

  def self.down
    remove_column :businesses, :footnotes
  end
end
