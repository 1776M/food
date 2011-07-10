class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :diet
      t.string :description
      t.integer :calories
      t.integer :fat
      t.integer :carbs
      t.integer :protein
      t.integer :satfat
      t.integer :sugar
      t.integer :salt

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
