module Admin::PropertiesHelper

  def categories_disabled?
    !['new', 'create'].include?(action_name.to_s)
  end
end
