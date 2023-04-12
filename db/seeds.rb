# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying all users'
User.destroy_all
puts 'Creating users'
user_one = User.create(name: "Luke", password: '123123', email: 'luke@live.com')
user_two = User.create(name: "Anakin", password: '123123', email: 'anakin@live.com')
user_three = User.create(name: "Padme", password: '123123', email: 'padme@live.com')
puts 'User creation complete'

puts 'Destroying all flats'
Flat.destroy_all
puts 'Creating flats'
flat_one = Flat.create(
  name: "",
  description: "",
  price_per_night: "",
  address_one: "",
  address_two: "",
  unit_number: "",
  zipcode: "",
  country: "",
  user_id: user_one.id
)
puts 'Flat creation complete'

puts 'Destroying all bookings'
Booking.destroy_all
puts 'Creating bookings'
booking_one = Booking.create(
  accepted: false,
  start_date: Date.new(2023, 5, 15),
  end_date: Date.new(2023, 5, 30),
  user_id: user_two.id,
  flat_id: flat_one.id
)
booking_two = Booking.create(
  accepted: false,
  start_date: Date.new(2023, 6, 2),
  end_date: Date.new(2023, 6, 5),
  user_id: user_three.id,
  flat_id: flat_one.id
)
puts 'Booking creation complete'
