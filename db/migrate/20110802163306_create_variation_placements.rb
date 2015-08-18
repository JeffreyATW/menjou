class CreateVariationPlacements < ActiveRecord::Migration
  def self.up
    create_table :variation_placements do |t|
      t.integer :item_id
      t.integer :variation_id
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :variation_placements
  end
end