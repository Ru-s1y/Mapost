# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create!(
  name: 'Pikachu',
  description: 'Pikachu is  here!',
  latitude: '34.67890',
  longitude: '135.76937'
)


# randomLat = rand(34.0..36.0)
# randomLng = rand(135.0..136.0)

# 20.times do |n|
#   name = Faker::Pokemon.name
#   description = Faker::Internet.description
#   latitude = randomLat
#   longitude = randomLng
#   User.create!(name: name,
#               description: description,
#               latitude: latitude,
#               longitude: longitude,
#               )
# end
