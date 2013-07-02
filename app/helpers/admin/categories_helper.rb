module Admin::CategoriesHelper

  def products_property_id_and_property_id(property)
    if ProductsProperty === property
      [property.id, property.property_id]
    elsif Property === property
      [nil, property.id]
    end
  end
end
