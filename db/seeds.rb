require 'faker'

puts "Criando 20 faker restaurnts"

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
end

puts "terminou de crian com exito"
