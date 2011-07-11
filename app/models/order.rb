class Order < ActiveRecord::Base

      attr_accessible :number, :total_price

      belongs_to :user 
      has_many :products	

      validates :number, :presence => true
      validates :total_price, :presence => true
      validates :user_id, :presence => true
	
end
