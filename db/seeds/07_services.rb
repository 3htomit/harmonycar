require "open-uri"
require "csv"

Service.destroy_all


# SERVICES

puts "Seeding 'contrôle technique':"

service1 = Service.new(
  name: "controle technique",
  price: 250,
  garage: Garage.first
)
service.save!
puts "> service 1 created"

service2 = Service.new(
  name: "controle technique",
  price: 250,
  garage: Garage.second
)
service.save!
puts "> service 2 created"

service3 = Service.new(
  name: "controle technique",
  price: 250,
  garage: Garage.third
)
service.save!
puts "> service 3 created"

puts "Seeding 'entretien':"

service = Service.new(
  name: "entretien",
  price: 120,
  garage: Garage.first
)
service.save!
puts "> service 1 created"

service = Service.new(
  name: "entretien",
  price: 80,
  garage: Garage.second
)
service.save!
puts "> service 2 created"

service = Service.new(
  name: "entretien",
  price: 110,
  garage: Garage.third
)
service.save!
puts "> service 3 created"

service = Service.new(
  name: "entretien",
  price: 120,
  garage: Garage.fourth
)
service.save!
puts "> service 4 created"

service = Service.new(
  name: "entretien",
  price: 115,
  garage: Garage.fifth
)
service.save!
puts "> service 5 created"

puts "Seeding 'vérification des pneus':"

service = Service.new(
  name: "vérification des pneus",
  price: 49.99,
  garage: Garage.find_by(name: "garage de L'Abbaye")
)
service.save!
puts "> service 1 created"

service = Service.new(
  name: "vérification des pneus",
  price: 49.99,
  garage: Garage.find_by(name: "Speedy Nantes la Durantière")
)
service.save!
puts "> service 2 created"

service = Service.new(
  name: "vérification des pneus",
  price: 49.99,
  garage: Garage.last
)
service.save!
puts "> service 3 created"

puts "Seeding 'vérification des niveaux':"

service = Service.new(
  name: "vérification des niveaux",
  price: 49.99,
  garage: Garage.find_by(name: "Garage Laennec")
)
service.save!
puts "> service 1 created"

service = Service.new(
  name: "vérification des niveaux",
  price: 49.99,
  garage: Garage.find_by(name: "Speedy Nantes la Durantière")
)
service.save!
puts "> service 2 created"

service = Service.new(
  name: "vérification des niveaux",
  price: 49.99,
  garage: Garage.find_by(name: "Garage Saint Felix")
)
service.save!
puts "> service 3 created"
