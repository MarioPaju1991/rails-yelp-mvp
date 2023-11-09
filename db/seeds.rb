# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning db..."
Restaurant.destroy_all
puts "Creating restaurants..."

sukia = Restaurant.create!(
  name: "Sukiya",
  address: "Meguro",
  phone_number: "80-05-23-11-07",
  category: "japanese"
)
Review.create!(
  rating: 3,
  content:"Good rice",
  restaurant_id:sukia.id
)

Restaurant.create!(
  name: "McDonalds",
  address: "Shibuya",
  phone_number: "70-09-53-14-09",
  category: "belgian"
)

Restaurant.create!(
  name: "Chopsticks",
  address: "Shinjuku",
  phone_number: "50-07-23-81-43",
  category: "chinese"
)

Restaurant.create!(
  name: "Pastapro",
  address: "Tokyo",
  phone_number: "54-03-73-89-31",
  category: "italian"
)

Restaurant.create!(
  name: "Pizza",
  address: "Saitama",
  phone_number: "50-03-23-71-46",
  category: "italian"
)

puts "Finished!"
