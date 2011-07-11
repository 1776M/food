class CorrectOrdersTable < ActiveRecord::Migration
  def self.up
      remove_column :orders, :total_price
      remove_column :orders, :number
      add_column :orders, :product_number, :integer	 	
  end

  def self.down
      add_column :orders, :total_price
      add_column :orders, :number
      remove_column :orders, :product_number	
  end
end
