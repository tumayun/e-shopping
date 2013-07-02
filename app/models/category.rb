class Category < ActiveRecord::Base
  paginates_per 10

  has_many :products
  has_many :properties

  validates :name, presence: true, length: { maximum: 20 }

  def self.select_options
    all.map { |category| [category.name, category.id] }
  end
end
