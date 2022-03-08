require "open-uri"
require "csv"

Garage.destroy_all


# GARAGES

puts "Seeding garages:"

garage = Garage.new(
  name: "Garage des Hauts Pavés",
  address: "68, Rue des Hauts Pavés, 44000 Nantes",
  telephone: "02 40 74 84 23",
  average_rating: 3,
  review_count: 150,
  web_address: "https://www.garage-des-hauts-paves.fr/"
)
file = URI.open('https://www.allogarage.fr/images/logo_bosch_car_service_x2.png')
garage.photo.attach(io: file, filename: "bosch", content_type: 'image/png')
garage.save!
puts "> garage 1 created"

garage = Garage.new(
  name: "Garrage L. Thibaud",
  address: "33 Quai de Versailles, 44000 Nantes",
  telephone: "02 40 20 33 29",
  average_rating: 4,
  review_count: 120,
  web_address: "https://www.allogarage.fr/garages/details-garage-Versailles-44-Garage-L-THIBAUD-22710.html"
)
file = URI.open('https://www.allogarage.fr/images/logo_precisium_x2.png')
garage.photo.attach(io: file, filename: "precision", content_type: 'image/png')
garage.save!
puts "> garage 2 created"

garage = Garage.new(
  name: "Garage de la Beaujoire",
  address: "56, Route de Carquefou, 44300 Nantes",
  telephone: "02 40 30 04 04",
  average_rating: 2,
  review_count: 30,
  web_address: "https://www.allogarage.fr/garages/details-garage-GARAGE-DE-LA-BEAUJOIRE-10586.html"
)
file = URI.open('https://www.allogarage.fr/images/logo_bosch_car_service_x2.png')
garage.photo.attach(io: file, filename: "bosch", content_type: 'image/png')
garage.save!
puts "> garage 3 created"

garage = Garage.new(
  name: "Feu Vert Nantes Paridis",
  address: "Rue Perray, 44300 Nantes",
  telephone: "08 21 04 50 36",
  average_rating: 4.5,
  review_count: 236,
  web_address: "https://www.feuvert.fr/?gclid=CjwKCAiA1JGRBhBSEiwAxXblwUjzNSwuT8fjUiYXaVlLpxMt4KA5uQ3SIbMRPD6ETGhUS2tvmF8aKRoCRIsQAvD_BwE"
)
file = URI.open('https://www.allogarage.fr/images/logo_feuvert_2021_x2.png')
garage.photo.attach(io: file, filename: "feu_vert", content_type: 'image/png')
garage.save!
puts "> garage 4 created"

garage = Garage.new(
  name: "Mahe",
  address: "31, Quai de Versailles, 44000 Nantes",
  telephone: "02 40 20 40 47",
  average_rating: 4.2,
  review_count: 431,
  web_address: "https://www.allogarage.fr/garages/details-garage-MAHE-18686.html"
)
file = URI.open('https://www.allogarage.fr/images/logo_ad_x2.png')
garage.photo.attach(io: file, filename: "ad", content_type: 'image/png')
garage.save!
puts "> garage 5 created"

garage = Garage.new(
  name: "garage de L'Abbaye",
  address: "4, Rue Chaptal, 44100 Nantes",
  telephone: "02 40 73 75 75",
  average_rating: 3.9,
  review_count: 327,
  web_address: "https://pros.lacentrale.fr/C032507/"
)
file = URI.open('https://www.allogarage.fr/images/logo_dacia_x2.png')
garage.photo.attach(io: file, filename: "dacia", content_type: 'image/png')
garage.save!
puts "> garage 6 created"

garage = Garage.new(
  name: "Garage Laennec",
  address: "14, Rue Laennec, 44000 Nantes",
  telephone: "02 51 72 24 05",
  average_rating: 3.4,
  review_count: 178,
  web_address: "https://www.allogarage.fr/garages/details-garage-GARAGE-LAENNEC-10577.html"
)
file = URI.open('https://www.allogarage.fr/images/logo_renault_2015_x2.png')
garage.photo.attach(io: file, filename: "renaud", content_type: 'image/png')
garage.save!
puts "> garage 7 created"

garage = Garage.new(
  name: "Speedy Nantes la Durantière",
  address: "99, Rue de la Durantière, 44100 Nantes",
  telephone: "02 40 95 19 95",
  average_rating: 4.8,
  review_count: 562,
  web_address: "https://centres-auto.speedy.fr/garage/nantes-44000/136"
)
file = URI.open('https://www.allogarage.fr/images/logo_speedy_x2.png')
garage.photo.attach(io: file, filename: "speedy", content_type: 'image/png')
garage.save!
puts "> garage 8 created"

garage = Garage.new(
  name: "Garage Saint Felix",
  address: "13, Rue de l'Ouche de Versailles, 44000 Nantes",
  telephone: "02 40 74 04 22",
  average_rating: 4.3,
  review_count: 164,
  web_address: "https://reseau.citroen.fr/reparateur-nantes-14"
)
file = URI.open('https://www.allogarage.fr/images/logo_citroen_2020_x2.png')
garage.photo.attach(io: file, filename: "citroen", content_type: 'image/png')
garage.save!
puts "> garage 9 created"

garage = Garage.new(
  name: "Garage de la Convention",
  address: "46 Bis, Rue de la Convention, 44100 Nantes",
  telephone: "02 40 58 55 15",
  average_rating: 3.8,
  review_count: 85,
  web_address: "https://www.eurorepar.fr/garage-de-martel-de-la-convention-nantes-8453.html"
)
file = URI.open('https://www.allogarage.fr/images/logo_euro_repar_car_service_x2.png')
garage.photo.attach(io: file, filename: "euro_repar", content_type: 'image/png')
garage.save!
puts "> garage 10 created"
