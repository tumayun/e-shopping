class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties, options: 'DEFAULT CHARSET=utf8' do |t|
      t.string :name, null: false, default: ''
      t.integer :category_id, null: false, default: ''
      t.timestamps
    end

    add_index :properties, [:category_id, :name], unique: true
  end
end
