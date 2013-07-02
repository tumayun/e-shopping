class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, options: 'DEFAULT CHARSET=utf8' do |t|
      t.string :name, null: false, default: ''
      t.integer :products_count, null: false, default: 0
      t.integer :properties_count, null: false, default: 0
      t.timestamps
    end

    add_index :categories, :name
  end
end
