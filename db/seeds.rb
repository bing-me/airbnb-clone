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
  name: "Quiet Petite Garden Retreat",
  description: "This private studio is tucked away on the back of the property of a single family home in a quiet family friendly neighborhood across the street from Bohemian Park. Easy freeway access to business 80 and walking distance to Town and Country village with shopping, Sprouts Market, Trader Joe's, Starbucks, restaurants and CVS Pharmacy.",
  price_per_night: "100",
  address_one: "3543 Walnut Ave",
  address_two: "",
  unit_number: "",
  zipcode: "CA 95608",
  country: "USA",
  user_id: user_one.id,
  capacity: 2
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

puts 'Destroying all vacancies'
Vacancy.destroy_all
puts 'Creating vacancies'
vacancy_date = Date.new(2023, 5, 1)
90.times do
  Vacancy.create(date: vacancy_date, vacant: true, flat_id: flat_one.id)
  vacancy_date += 1.day
end
puts 'vacancy creation complete'
