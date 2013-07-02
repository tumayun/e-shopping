module Admin::ProductsHelper

  PUBLISH_STATUS_OPTIONS = ActiveSupport::HashWithIndifferentAccess.new(
    '准备上架' => Product::UNPUBLISHED,
    '上架中'   => Product::PUBLISHED,
    '下架中'   => Product::OFF_THE_SHELF
  )

  def publish_status_options
    PUBLISH_STATUS_OPTIONS.to_a
  end

  def display_publish_status(publish_status)
    PUBLISH_STATUS_OPTIONS.invert[publish_status]
  end
end
