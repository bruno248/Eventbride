# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do |i|
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
  description: Faker::Lorem.paragraph(sentence_count: 3), email: "lebgdethp#{i+1}@yopmail.com")
end

event = Event.create(start_date:'2021-08-24', duration:30, title:"Wedding", description:"best wedding ever",
  price: 200, location: "Paris", administrator_id: 1)

Attendance.create(event_id:1, participant_id: 6, stripe_customer_id: "42")
Attendance.create(event_id:1, participant_id: 4, stripe_customer_id: "43")
Attendance.create(event_id:1, participant_id: 7, stripe_customer_id: "44")

puts " Seed done !"

