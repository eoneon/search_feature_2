5.times do
  Category.create(:name => Faker::Lorem.word)
end

15.times do
  Product.create(:name => Faker::Commerce.product_name, :price => Faker::Commerce.price, :category_id => Faker::Number.between(1, 5))
end

puts "Seed finished"
puts "#{Category.count} categories created"
puts "#{Product.count} products created"
