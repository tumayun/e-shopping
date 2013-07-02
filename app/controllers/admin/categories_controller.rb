class Admin::CategoriesController < Admin::BaseController

  def index
    @categories = Category.page(params[:page])
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update_attributes(safe_params)
      redirect_to admin_category_url(@category), notice: succeed_message
    else
      render :edit
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(safe_params)

    if @category.save
      redirect_to admin_category_url(@category), notice: succeed_message
    else
      render :new
    end
  end

  def properties
    category = Category.find(params[:id])
    properties = category.properties

    render partial: 'properties', locals: { properties: properties }
  end

  private

  def safe_params
    params.require(:category).permit(:name)
  end
end
