class ProductsController < ApplicationController

  def index
    @products = Product.published.includes(:products_properties).page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end
end
