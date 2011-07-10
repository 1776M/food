class Product < ActiveRecord::Base

  	attr_accessible :name, :price, :diet, :description, :calories, :fat, :carbs, :protein,
			  :satfat, :sugar, :salt


	validates :name, :presence => true
       validates :price, :presence => true
       validates :diet, :presence => true
	validates :description, :presence => true
       validates :calories, :presence => true
       validates :fat, :presence => true
	validates :carbs, :presence => true
       validates :protein, :presence => true
       validates :satfat, :presence => true
	validates :sugar, :presence => true
       validates :salt, :presence => true

end
