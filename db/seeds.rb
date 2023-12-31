# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

categories = ["chinese", "italian", "japanese", "french", "belgian"]

15.times do
  name = Faker::Restaurant.name
  address = Faker::Address.street_address
  phone_number = Faker::PhoneNumber.phone_number
  restaurant_category = categories.sample

  Restaurant.create(
    name: name,
    address: address,
    phone_number: phone_number,
    category: restaurant_category
  )
end

puts 'seed succesful'
