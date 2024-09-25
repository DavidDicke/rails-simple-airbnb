# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "creating flats"
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Cozy tiny room in Amsterdam',
  address: 'Amsterdam',
  description: 'A very tiny but wonderfully cozy room in traditional and authentic Amsterdam townhouse in city center. Shared kitchen and bathroom.',
  price_per_night: 60,
  number_of_guests: 2
)
Flat.create!(
  name: 'Grand Hotel feeling in Budapest flat',
  address: 'Budapest',
  description: 'You want to feel like aristocrats in 19th century Budapest? Spacious flat with all comfort, 3 bedrooms, large bathroom with bathtub and comfortable living room.',
  price_per_night: 200,
  number_of_guests: 6
)
Flat.create!(
  name: 'Living with Nature in Saxonian Swiss',
  address: 'Bad Schandau',
  description: 'straight in the woods, you will live in an old water mill with a authentic feeling of past centuries. High quality furniture with camping comfort.',
  price_per_night: 75,
  number_of_guests: 4
)
puts "db seeded"
