class Cart < ActiveRecord::Base


	attr_accessible :product_number

	belongs_to :user
	has_many :products

	
       validates :user_id, :presence => true
	validates :product_number, :presence => true

end
