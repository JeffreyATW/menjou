class CreateVariations < ActiveRecord::Migration
  def self.up
    create_table :variations do |t|
      t.string :name
      t.decimal :price
      t.integer :item_id
      t.integer :order
      t.boolean :additional

      t.timestamps
    end
  end

  def self.down
    drop_table :variations
  end
end
