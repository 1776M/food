class ProductsController < ApplicationController

  def new
      @product = Product.new
      @title = "New product"
  end

  def show
      @product = Product.find(params[:id])
      @title = "products"
  end

  def create
    @product = Product.new(params[:product])
    if @product.save 
      flash[:success] = "You have created a new product"
      redirect_to products_path
    else
      @title = "New product"
      render 'new'
    end
  end

  def edit
      @product = Product.find(params[:id])  
      @title = "Edit product" 
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:success] = "Product updated"
      redirect_to products_path
    else
      @title = "Edit product"
      render 'edit'
    end
  end
 
  def index
    @title = "All products"
    @fxrates = Product.all
  end

  def destroy
    Product.find(params[:id]).destroy
    flash[:success] = "Product deleted"
    redirect_to products_path
  end


end
