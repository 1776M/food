class Place < ActiveRecord::Base
	attr_accessible :phone, :company, :address1, :address2, :address3, :postcode

       belongs_to :user 

	validates :company, :presence => true
       validates :postcode, :presence => true
       validates :user_id, :presence => true	
end
