require 'faker'

puts "Criating Users, restaurants, tables and items"

20.times do |i|
  email = "test#{i}@test.com"
  password = "123123#{i}"

  user = User.new(email: email, password: password)
  user.save
end


20.times do
  resto = Faker::Restaurant.name
  num = Faker::PhoneNumber.cell_phone
  add = Faker::Address.street_name
  email = Faker::Internet.email
  cate = ["Indian", "Brazilian", "Fast-Food", "Chinesse",].sample
  restaurant = Restaurant.new(name: resto, address: add, email: email, user: User.all.sample, category: cate)
  restaurant.save
  #adding 10 tables in the restaurant
  10.times do |i|
  place = Place.new
  i += 1
  place.name = i.to_s
  place.restaurant_id = restaurant.id
  place.save
  end
  #adding 20 dishes in the restaurant
  5.times do |i|
  item = Item.new
  item.restaurant_id = restaurant.id
  item.name = Faker::Dessert.variety
  item.category = "Dessert"
  item.description = Faker::Lorem.sentence
  item.price = i*10
  item.save
  end

  5.times do |i|
  item = Item.new
  item.restaurant_id = restaurant.id
  item.name = Faker::Food.dish
  item.category = "Starter"
  item.description = Faker::Lorem.sentence
  item.price = i*10
  item.save
  end

  5.times do |i|
  item = Item.new
  item.restaurant_id = restaurant.id
  item.name = Faker::Food.dish
  item.category = "Main Course"
  item.description = Faker::Lorem.sentence
  item.price = i*10
  item.save
  end

  5.times do |i|
  item = Item.new
  item.restaurant_id = restaurant.id
  item.name = Faker::Beer.brand
  item.category = "Drinks"
  item.description = Faker::Lorem.sentence
  item.price = i*10
  item.save
  end
end

puts "Seed runned successfully!!!!"
