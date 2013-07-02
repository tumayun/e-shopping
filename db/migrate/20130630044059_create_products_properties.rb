class CreateProductsProperties < ActiveRecord::Migration
  def change
    create_table :products_properties, options: 'DEFAULT CHARSET=utf8' do |t|
      t.integer :product_id, null: false, default: 0
      t.integer :property_id, null: false, default: 0
      t.string  :name, null: false, default: ''
      t.string  :value, null: false, default: ''
      t.timestamps
    end

    add_index :products_properties, :product_id
  end
end
