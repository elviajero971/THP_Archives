# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Faker::Internet.email

Reservation.destroy_all
User.destroy_all
City.destroy_all
Listing.destroy_all

20.times do
  user = User.create!(
    email: Faker::Internet.email
    phone_number: [0190295008, +33 9 82 41 89 98, 0548399999, 08 24 91 62 96, 0611133988, 0165661681, 0743624188, 0256178807, 0868887405, 0732933163, 0713763756, 0193664498, 0433345851, 0891012798, 0117117014].sample
    description: 
  )
end

10.times do
  city = City.create!(
    city_name: Faker::Address.city
  )
end

50.times do
  listing = Listing.create!(
    available_beds: Faker::Number.between(from: 1, to: 15),
    price: Faker::Number.between(from: 1, to: 200),
    description: Faker::String.random(length: 140..300),
    has_wifi: Faker::Boolean.boolean,
    welcome_message: ["Bienvenue à l'auberge espagnole", "Welcome to the villa!!", "Bienvenue au paradis!!", "Bienvenue chez toi mec!"]
  )
end