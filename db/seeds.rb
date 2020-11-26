# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# generate random pets and histories
rand(10..20).times do
  p = Pet.create(name: Faker::Name.first_name, race: Faker::Creature::Animal.name, birthday: Faker::Date.birthday(min_age: 1, max_age: 15))
  rand(10..20).times do
    PetHistory.create(weight: rand(1..15), height: rand(10..50), description: Faker::Quotes::Shakespeare.hamlet_quote, pet: p)
  end
end