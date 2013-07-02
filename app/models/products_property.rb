class ProductsProperty < ActiveRecord::Base
  paginates_per 10

  belongs_to :product, touch: true

  validates :product_id, presence: true, numericality: { only_integer: true }
  validates :value, :name, presence: true, length: { maximum: 255 }
  validates :name, uniqueness: { scope: :product_id }

  before_validation :assign_property_id, on: [:create, :update]

  attr_accessor :category_id

  protected

  def assign_property_id
    if name.present? && property = Property.find_by(name: name, category_id: category_id)
      self.property_id = property.id
    else
      self.property_id = 0
    end

    true
  end
end
