class PagesController < ApplicationController

  def about
  end

  def home
       @title = 'address'
       @place = Place.new if user_signed_in?
       @places = current_user.place if user_signed_in?     
  end

end
