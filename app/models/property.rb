class Property < ActiveRecord::Base
  paginates_per 10

  belongs_to :category, counter_cache: true

  validates :category_id, presence: true, numericality: { only_integer: true }
  validates :name, presence: true, uniqueness: { scope: :category_id }, length: { maximum: 20 }
end
