class CreatePlacements < ActiveRecord::Migration
  def self.up
    create_table :placements do |t|
      t.integer :category_id
      t.integer :item_id
      t.decimal :price
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :placements
  end
end