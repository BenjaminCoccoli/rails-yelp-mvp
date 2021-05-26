# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database.."

Restaurant.destroy_all

puts "Creating new restaurants.."

5.times do
  new_restaurant = Restaurant.new(
    name: Faker::Kpop.boy_bands,
    address: Faker::Movies::StarWars.planet,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
    phone_number: rand(10**10)
    )

 new_restaurant.save

 puts "#{new_restaurant.id} - #{new_restaurant.name} restaurant - on #{new_restaurant.address} street - #{new_restaurant.category} food - The number is #{new_restaurant.phone_number}"

end

puts "done"
