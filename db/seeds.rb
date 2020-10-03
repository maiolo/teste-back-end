# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all

puts "destroyed all contacts"

puts "creating new contacts"
5.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  full_name = "#{first_name} #{last_name}"
  var_email = Faker::Internet.email(name: full_name,separators: '.', domain: "example")
  contact = Contact.create!(name: full_name, email: var_email) 
  puts "Name: #{contact.name}"
  puts "E-Mail: #{contact.email}"
end