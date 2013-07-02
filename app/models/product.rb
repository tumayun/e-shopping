class Product < ActiveRecord::Base
  paginates_per 10

  has_many :products_properties
  belongs_to :category, counter_cache: true, touch: true

  UNPUBLISHED   = 0 # 准备上架
  PUBLISHED     = 1 # 上架中
  OFF_THE_SHELF = 2 # 下架中

  validates :name, presence: true, length: { maximum: 255 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :category_id, presence: true, numericality: { only_integer: true }

  scope :published, -> { where(publish_status: PUBLISHED) }

  accepts_nested_attributes_for :products_properties, allow_destroy: true, reject_if: proc { |attributes| attributes['name'].blank? && attributes['value'].blank? }

  def set_products_properties_category_id
    products_properties.map { |pp| pp.category_id = category_id }
  end
end
