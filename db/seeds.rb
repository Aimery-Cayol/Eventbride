# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'



20.times do
    User.create!(user: Faker::Internet.email , encrypted_password: Faker::Number.between(from: 1, to: 100), description: Faker::Quotes::Shakespeare.hamlet_quote, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end


=begin
20.times do
  Attendance.create!(stripe_customer_id: rand(1..20))
end

20.times do
  Event.create!(start_date: Faker::Date.between(from: Date.today, to: '2034-09-25'), duration: Faker::Number.between(from: 1, to: 100), title: Faker::Restaurant.name, description: Faker::Quotes::Shakespeare.hamlet_quote, price: Faker::Number.between(from: 1, to: 1000), location: Faker::Nation.capital_city)
end
=end 


