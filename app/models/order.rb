class Order < ActiveRecord::Base

      attr_accessible :number, :total_price

      belongs_to :user 

      validates :number, :presence => true
      validates :total_price, :presence => true
      validates :user_id, :presence => true	
end
