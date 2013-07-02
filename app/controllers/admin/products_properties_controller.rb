class Admin::ProductsPropertiesController < Admin::BaseController

  def destroy
    @products_property = ProductsProperty.find(params[:id])
    @products_property.destroy
    render json: { msg: 'OK' }
  end
end
