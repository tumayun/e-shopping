class Admin::PropertiesController < Admin::BaseController

  def index
    @properties = Property.includes(:category).page(params[:page])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(safe_params)

    if @property.save
      redirect_to admin_properties_url, notice: succeed_message
    else
      render :new
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])

    if @property.update_attributes(safe_params)
      redirect_to admin_property_url(@property), notice: succeed_message
    else
      render :edit
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  private

  def safe_params
    if action_name.to_s == 'create'
      params.require(:property).permit(:name, :category_id)
    else
      params.require(:property).permit(:name)
    end
  end
end
