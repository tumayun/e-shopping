class Admin::ProductsController < Admin::BaseController

  def index
    @products = Product.includes(:category).page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(safe_params)
    @product.set_products_properties_category_id

    if @product.save
      redirect_to admin_product_url(@product), notice: succeed_message
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.set_products_properties_category_id

    if @product.update_attributes(safe_params)
      redirect_to admin_product_url(@product), notice: succeed_message
    else
      render :edit
    end
  end

  private

  def safe_params
    params.require(:product).permit(:name, :price, :publish_status, :category_id, products_properties_attributes: [:value, :property_id, :name, :id, :_destroy])
  end
end
