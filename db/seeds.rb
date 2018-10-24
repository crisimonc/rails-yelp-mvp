# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(name: "rest1", phone_number: "333 444", address: "XX Street", category: "chinese")
Restaurant.create(name: "rest2", phone_number: "333 444", address: "XX Street", category: "italian")
Restaurant.create(name: "rest3", phone_number: "333 444", address: "XX Street", category: "japanese")
Restaurant.create(name: "rest4", phone_number: "333 444", address: "XX Street", category: "french")
Restaurant.create(name: "rest5", phone_number: "333 444", address: "XX Street", category: "belgian")

10.times do
  Review.create(content: "blabla", rating: 3, restaurant_id: rand(1..5))
end
