class PagesController < ApplicationController

  def about
  end

  def home
       @title = 'address'
       @place = Place.new if user_signed_in?
       @places = current_user.place if user_signed_in? 
       @products = Product.all if user_signed_in?    
  end

  def admin
	@title = 'admin'
       @product = Product.new if user_signed_in?
       @products = Product.all if user_signed_in?
  end

end
