class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :business_id
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
