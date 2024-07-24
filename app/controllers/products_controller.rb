class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
  def edit
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(name: params[:product][:name], 
    description: params[:product][:description], 
    price_cents: params[:product][:price_cents])

    if @product.save
      return redirect_to products_path
    end
    render :new
  end

  def destroy 
    product = Product.find(params[:id])
    product.destroy
    redirect_to root_path
  end
end