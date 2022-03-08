require "open-uri"
require "csv"

User.destroy_all


# USERS

puts "Seeding users:"

user1 = User.create!(
  first_name: "Marie",
  last_name: "Dupont",
  email: "marie@mail.com",
  password: "secret"
)
puts "> user 1 created"

user2 = User.create!(
  first_name: "Dominique",
  last_name: "Bernard",
  email: "dominique@mail.com",
  password: "secret"
)
puts "> user 2 created"

user3 = User.create!(
  first_name: "Pauline",
  last_name: "Le Roux",
  email: "pauline@mail.com",
  password: "secret"
)
puts "> user 3 created"
