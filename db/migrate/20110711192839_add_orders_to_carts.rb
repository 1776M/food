class AddOrdersToCarts < ActiveRecord::Migration
  def self.up
    add_column :carts, :product_number, :integer
  end

  def self.down
    remove_column :carts, :product_number
  end
end
