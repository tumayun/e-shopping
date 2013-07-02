class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products, options: 'DEFAULT CHARSET=utf8' do |t|
      t.string :name, null: false, default: ''
      t.decimal :price, precision: 10, scale: 2, null: false, default: 0.00
      t.integer :publish_status, null: false, default: 0
      t.integer :category_id, null: false, default: 0
      t.timestamps
    end

    add_index :products, :name
    add_index :products, [:category_id, :name], unique: true
  end
end
