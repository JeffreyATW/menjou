class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
      t.time :start_time
      t.time :end_time
      t.integer :menu_id
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
