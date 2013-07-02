# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
unless admin = User.find_by(name: 'admin')
  puts '创建管理员...'
  admin = User.create!(name: 'admin', email: 'admin@e-shopping.com', password: 'admin', password_confirmation: 'admin', is_admin: true)
  admin.confirm!
end

unless user = User.find_by(name: 'user')
  puts '创建普通用户...'
  user = User.create!(name: 'user', email: 'user@e-shopping.com', password: 'user123', password_confirmation: 'user123')
  user.confirm!
end

unless clothes = Category.find_by(name: '衣服')
  puts '创建衣服分类...'
  clothes = Category.create!(name: '衣服')
end

unless bust = clothes.properties.find_by(name: '胸围')
  puts '创建胸围属性...'
  bust = clothes.properties.create!(name: '胸围')
end

unless shoulder = clothes.properties.find_by(name: '肩宽')
  puts '创建肩宽属性...'
  bust = clothes.properties.create!(name: '肩宽')
end

unless trousers = Category.find_by(name: '裤子')
  puts '创建裤子分类...'
  trousers = Category.create!(name: '裤子')
end

unless waistline = trousers.properties.find_by(name: '腰围')
  puts '创建腰围属性...'
  waistline = trousers.properties.create!(name: '腰围')
end

unless length = trousers.properties.find_by(name: '裤长')
  puts '创建裤长属性...'
  waistline = trousers.properties.create!(name: '裤长')
end

1.upto(10).each do |index|
  name = "Product #{index}"
  unless Product.find_by(name: name)
    puts "创建#{name}..."
    Product.create!(
      name: name,
      price: 100.10,
      category_id: clothes.id,
      publish_status: Product::PUBLISHED,
      products_properties_attributes: {
        0 => { name: '胸围', value: '100cm' },
        1 => { name: '肩宽', value: '40cm' }
      }
    )
  end
end

11.upto(20).each do |index|
  name = "Product #{index}"
  unless Product.find_by(name: name)
    puts "创建#{name}..."
    Product.create!(
      name: name,
      price: 100.10,
      category_id: trousers.id,
      publish_status: Product::PUBLISHED,
      products_properties_attributes: {
        0 => { name: '腰围', value: '31英尺' },
        1 => { name: '裤长', value: '100cm' }
      }
    )
  end
end
