class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :phone      
      t.string :company
      t.string :address1      
      t.string :address2
      t.string :address3      
      t.string :postcode
      t.integer :user_id

      t.timestamps
    end
     add_index :places, :user_id
     add_index :places, :created_at
  end

  def self.down
    drop_table :places
  end
end
