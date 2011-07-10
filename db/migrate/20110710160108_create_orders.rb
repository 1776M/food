class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :number
      t.decimal :total_price
      t.integer :user_id

      t.timestamps
    end
     add_index :orders, :user_id
     add_index :orders, :created_at
  end

  def self.down
    drop_table :orders
  end
end
