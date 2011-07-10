class PlacesController < ApplicationController

  def create
    @place  = current_user.build_place(params[:place])
    if @place.save
      flash[:success] = "Address created!"
      redirect_to root_path 
    else
      render root_path
    end
  end

  def destroy
    @place.destroy    
    redirect_back_or root_path 
  end

  def show
       @title = 'address'
       @place = Place.new      
  end

  def edit
    @place = Place.find(params[:id])
    @title = "Edit address"
  end

  def update
    @place = Place.find(params[:id])
    if @place.update_attributes(params[:place])
      flash[:success] = "Address updated."
      redirect_to root_path
    else
      @title = "Edit user"
      render 'edit'
    end
  end

end
