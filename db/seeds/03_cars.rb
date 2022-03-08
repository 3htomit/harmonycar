require "open-uri"
require "csv"

Car.destroy_all


# CARS

puts "Seeding cars:"

car1 = Car.create!(number_plate: "GF-883-DA", mileage: 44_000, user: User.first, specification: Specification.first )
puts "> car 1 created"
car2 = Car.create(number_plate: "GD-232-TD", mileage: 30_000, user: User.first, specification: Specification.third)
puts "> car 2 created"
car3 = Car.create(number_plate: "GF-220-HR", mileage: 10_000, user: User.second, specification: Specification.fifth)
puts "> car 3 created"
