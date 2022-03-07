require "open-uri"
require "csv"

User.destroy_all
AlertCategory.destroy_all
Alert.destroy_all
Specification.destroy_all
Car.destroy_all
Garage.destroy_all
Service.destroy_all

puts "Beginning to create users"

user1 = User.create!(
  first_name: "Marie",
  last_name: "Dupont",
  email: "marie@mail.com",
  password: "secret"
)

puts "User 1 saved"

user2 = User.create!(
  first_name: "Dominique",
  last_name: "Bernard",
  email: "dominique@mail.com",
  password: "secret"
)

puts "User 2 saved"

user3 = User.create!(
  first_name: "Pauline",
  last_name: "Le Roux",
  email: "pauline@mail.com",
  password: "secret"
)

puts "User 3 saved"

spec1 = Specification.new(
  make: "Renault",
  model: "Espace",
  fuel: "Diesel",
  critair: 2,
  engine: "Blue dCi 160",
  transmission: "Automatique",
  start_year: "04/06/2019",
  end_year: "17/12/2019")
file = URI.open('https://sf2.autojournal.fr/wp-content/uploads/autojournal/2020/11/Renault_Espace_2019_55c6e.jpg')
spec1.photo.attach(io: file, filename: "spec1", content_type: 'image/png')
spec1.save
puts "spec 1 created"

spec2 = Specification.new(
  make: "Renault",
  model: "Espace",
  fuel: "Essence",
  critair: 3,
  engine: "1.8 TCe 225",
  transmission: "Automatique",
  start_year: "01/01/2018",
  end_year: "05/11/2018")
file = URI.open('https://sf1.auto-moto.com/wp-content/uploads/sites/9/2018/11/93213_2017_-_essais_presse_renault_espace_initiale_paris_model_year_2017.jpg')
spec2.photo.attach(io: file, filename: "spec2", content_type: 'image/png')
spec2.save
puts "spec 2 created"

spec3 = Specification.new(
  make: "Audi",
  model: "A4 V",
  fuel: "Diesel",
  critair: 1,
  engine: "2.0 TDI136",
  transmission: "Automatique",
  start_year: "21/11/2011",
  end_year: "06/03/2013")
file = URI.open('https://www.largus.fr/images/photos/rsi/_G_JPG/Voitures/AUDI/A4/V_B9/Ph2/Berline_4_portes/troisquartavant1.jpg')
spec3.photo.attach(io: file, filename: "spec3", content_type: 'image/png')
spec3.save
puts "spec 3 created"

spec4 = Specification.new(
  make: "Audi",
  model: "Audi A8 IV",
  fuel: "Diesel",
  critair: 4,
  engine: "3.0 TDI286",
  transmission: "Automatique",
  start_year: "01/10/2017",
  end_year: "")
file = URI.open('https://www.larevueautomobile.com/images/fiche-technique/2019/Audi/A8-L/Audi_A8-L_MD_1.jpg')
spec4.photo.attach(io: file, filename: "spec4", content_type: 'image/png')
spec4.save
puts "spec 4 created"

spec5 = Specification.new(
  make: "Ford",
  model: "Ford Cougar",
  fuel: "Essence",
  critair: 4,
  engine: "2.0",
  transmission: "Manuelle",
  start_year: "01/12/1999",
  end_year: "01/11/2000")
file = URI.open('https://images.caradisiac.com/logos-ref/modele/modele--ford-cougar/S5-modele--ford-cougar.jpg')
spec5.photo.attach(io: file, filename: "spec5", content_type: 'image/png')
spec5.save
puts "spec 5 created"

spec6 = Specification.new(
  make: "Ford",
  model: "Ford Fiesta V",
  fuel: "Essence",
  critair: 3,
  engine: "1.0 EcoB 100",
  transmission: "Automatique",
  start_year: "15/05/2017",
  end_year: "02/06/2020")
file = URI.open('https://cdn.vroom.be/media/public/articles/None/gallery/17738/2017_ford_fiesta_titanium_01.jpg')
spec6.photo.attach(io: file, filename: "spec6", content_type: 'image/png')
spec6.save
puts "spec 6 created"

spec7 = Specification.new(
  make: "Seat",
  model: "Arona",
  fuel: "Essence",
  critair: 2,
  engine: "1.0 ETSI 110",
  transmission: "Manuelle",
  start_year: "05/02/2021",
  end_year: "01/05/2021")
file = URI.open('https://gcm.moniteurautomobile.be/imgcontrol/c680-d465/clients/moniteur/content/medias/images/test_drives/10000/600/40/2022-seat-arona-20.jpg')
spec7.photo.attach(io: file, filename: "spec7", content_type: 'image/png')
spec7.save
puts "spec 7 created"

spec8 = Specification.new(
  make: "Skoda",
  model: "Scala",
  fuel: "Manuelle",
  critair: 3,
  engine: "1.0 TSI 95",
  transmission: "Essence",
  start_year: "12/11/2021",
  end_year: "")
file = URI.open('https://www.automobile-magazine.fr/asset/cms/840x394/156849/config/110245/cette-scala-reprend-la-plate-forme-des-petites-volkswagen-polo-ou-seat-ibiza-mais-soigne-davantage-le-confort.jpg')
spec8.photo.attach(io: file, filename: "spec8", content_type: 'image/png')
spec8.save
puts "spec 8 created"

spec9 = Specification.new(
  make: "Bentley",
  model: "Arnage",
  fuel: "Essence",
  critair: 5,
  engine: "V8 6.7",
  transmission: "Manuelle",
  start_year: "01/09/2004",
  end_year: "01/12/2009")
file = URI.open('https://images.caradisiac.com/logos-ref/modele/modele--bentley-arnage/S0-modele--bentley-arnage.jpg')
spec9.photo.attach(io: file, filename: "spec9", content_type: 'image/png')
spec9.save
puts "spec 9 created"

spec10 = Specification.new(
  make: "BMW",
  model: "M5 Touring",
  fuel: "Essence",
  critair: 5,
  engine: "5.0 V10",
  transmission: "Automatique",
  start_year: "26/03/2007",
  end_year: "01/09/2010")
file = URI.open('https://s1.cdn.autoevolution.com/images/gallery/BMWM5Touring-1235_1.jpg')
spec10.photo.attach(io: file, filename: "spec10", content_type: 'image/png')
spec10.save
puts "spec 10 created"

car1 = Car.create!(number_plate: "GF-883-DA", mileage: 44_000, user: user1, specification: spec1 )
puts "car 1 created"
car2 = Car.create(number_plate: "GD-232-TD", mileage: 30_000, user: user1, specification: spec3)
puts "car  2 created"
car3 = Car.create(number_plate: "GF-220-HR", mileage: 10_000, user: user2, specification: spec6)
puts "car  3 created"


puts "Beginning to create alert category"

alert_category1 = AlertCategory.create!(
  name: "Contrôle technique",
  description: "Le contrôle technique concerne les véhicules de tourisme et utilitaires légers, de 4 ans et plus, à renouveler tous les 2 ans.",
  max_weeks: 12
)

puts "Alert category 1 saved"

alert_category2 = AlertCategory.create!(
  name: "Entretien",
  description: "La révision consiste à examiner, à intervalles réguliers, les différents composants d’un véhicule, pour maximiser sa fiabilité, sa performance et sa longévité.",
  max_weeks: 4
)

puts "Alert category 2 saved"

alert_category3 = AlertCategory.create!(
  name: "Vérification des pneus",
  description: "Si vous conduisez avec des pneus sur ou sous gonflés vous mettez en danger votre sécurité. La bonne pression est un facteur de sécurité, de longévité de vos pneus et de consommation de carburant réduite.",
  max_weeks: 2
)

puts "Alert category 3 saved"

alert_category4 = AlertCategory.create!(
  name: "Vérification des niveaux",
  description: "Vérifiez les niveaux des fluides d’une voiture régulièrement ou avant un long trajet, afin de conserver une voiture en bon état et garantir la sécurité de tous sur la route.",
  max_weeks: 4
)

puts "Alert category 4 saved"


puts "Beginning to create car alerts"

alert1 = Alert.create!(
  car: Car.first,
  alert_category: AlertCategory.first,
  due_date: Date.today-2.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert2 = Alert.create!(
  car: Car.first,
  alert_category: AlertCategory.second,
  due_date: Date.today+112.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert3 = Alert.create!(
  car: Car.first,
  alert_category: AlertCategory.third,
  due_date: Date.today-32.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert4 = Alert.create!(
  car: Car.first,
  alert_category: AlertCategory.fourth,
  due_date: Date.today+292.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

puts "Alert car 1 saved"

alert5 = Alert.create!(
  car: Car.second,
  alert_category: AlertCategory.first,
  due_date: Date.today+462.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert6 = Alert.create!(
  car: Car.second,
  alert_category: AlertCategory.second,
  due_date: Date.today+362.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert7 = Alert.create!(
  car: Car.second,
  alert_category: AlertCategory.third,
  due_date: Date.today-12.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert8 = Alert.create!(
  car: Car.second,
  alert_category: AlertCategory.fourth,
  due_date: Date.today-32.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

puts "Alert car 2 saved"

alert9 = Alert.create!(
  car: Car.third,
  alert_category: AlertCategory.first,
  due_date: Date.today+362.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert10 = Alert.create!(
  car: Car.third,
  alert_category: AlertCategory.second,
  due_date: Date.today+15.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert11 = Alert.create!(
  car: Car.third,
  alert_category: AlertCategory.third,
  due_date: Date.today-132.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert12 = Alert.create!(
  car: Car.third,
  alert_category: AlertCategory.fourth,
  due_date: Date.today,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

puts "Alert car 3 saved"



i = 1
puts "garage #{i} create"

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

puts "garage #{i} save ! "


i+=1

puts "garage #{i} create"

garage = Garage.new(
  name: "Versailles 44 / Garage L. THIBAUD",
  address: "33 Quai de Versailles, 44000 Nantes",
  telephone: "02 40 20 33 29",
  average_rating: 4,
  review_count: 120,
  web_address: "https://www.allogarage.fr/garages/details-garage-Versailles-44-Garage-L-THIBAUD-22710.html"
)

file = URI.open('https://www.allogarage.fr/images/logo_precisium_x2.png')
garage.photo.attach(io: file, filename: "precision", content_type: 'image/png')
garage.save!

puts "garage #{i} save ! "

i+=1

puts "garage #{i} create"

garage = Garage.new(
  name: "GARAGE DE LA BEAUJOIRE",
  address: "56, Route de Carquefou, 44300 Nantes",
  telephone: "02 40 30 04 04",
  average_rating: 2,
  review_count: 30,
  web_address: "https://www.allogarage.fr/garages/details-garage-GARAGE-DE-LA-BEAUJOIRE-10586.html"
)

file = URI.open('https://www.allogarage.fr/images/logo_bosch_car_service_x2.png')
garage.photo.attach(io: file, filename: "bosch", content_type: 'image/png')
garage.save!

puts "garage #{i} save ! "

i+=1

puts "garage #{i} create"

garage = Garage.new(
  name: "FEU VERT NANTES PARIDIS",
  address: "Rue Perray, 44300 Nantes",
  telephone: "08 21 04 50 36",
  average_rating: 4.5,
  review_count: 236,
  web_address: "https://www.feuvert.fr/?gclid=CjwKCAiA1JGRBhBSEiwAxXblwUjzNSwuT8fjUiYXaVlLpxMt4KA5uQ3SIbMRPD6ETGhUS2tvmF8aKRoCRIsQAvD_BwE"
)

file = URI.open('https://www.allogarage.fr/images/logo_feuvert_2021_x2.png')
garage.photo.attach(io: file, filename: "feu_vert", content_type: 'image/png')
garage.save!

puts "garage #{i} save ! "

i+=1

puts "garage #{i} create"

garage = Garage.new(
  name: "MAHE",
  address: "31, Quai de Versailles, 44000 Nantes",
  telephone: "02 40 20 40 47",
  average_rating: 4.2,
  review_count: 431,
  web_address: "https://www.allogarage.fr/garages/details-garage-MAHE-18686.html"
)

file = URI.open('https://www.allogarage.fr/images/logo_ad_x2.png')
garage.photo.attach(io: file, filename: "ad", content_type: 'image/png')
garage.save!

puts "garage #{i} save ! "

i+=1

puts "garage #{i} create"

garage = Garage.new(
  name: "GARAGE DE L'ABBAYE",
  address: "4, Rue Chaptal, 44100 Nantes",
  telephone: "02 40 73 75 75",
  average_rating: 3.9,
  review_count: 327,
  web_address: "https://pros.lacentrale.fr/C032507/"
)

file = URI.open('https://www.allogarage.fr/images/logo_dacia_x2.png')
garage.photo.attach(io: file, filename: "dacia", content_type: 'image/png')
garage.save!

puts "garage #{i} save ! "

i+=1

puts "garage #{i} create"

garage = Garage.new(
  name: "GARAGE LAENNEC",
  address: "14, Rue Laennec, 44000 Nantes",
  telephone: "02 51 72 24 05",
  average_rating: 3.4,
  review_count: 178,
  web_address: "https://www.allogarage.fr/garages/details-garage-GARAGE-LAENNEC-10577.html"
)

file = URI.open('https://www.allogarage.fr/images/logo_renault_2015_x2.png')
garage.photo.attach(io: file, filename: "renaud", content_type: 'image/png')
garage.save!

puts "garage #{i} save ! "

i+=1

puts "garage #{i} create"

garage = Garage.new(
  name: "SPEEDY Nantes la Durantière",
  address: "99, Rue de la Durantière, 44100 Nantes",
  telephone: "02 40 95 19 95",
  average_rating: 4.8,
  review_count: 562,
  web_address: "https://centres-auto.speedy.fr/garage/nantes-44000/136"
)

file = URI.open('https://www.allogarage.fr/images/logo_speedy_x2.png')
garage.photo.attach(io: file, filename: "speedy", content_type: 'image/png')
garage.save!

puts "garage #{i} save ! "

i+=1

puts "garage #{i} create"

garage = Garage.new(
  name: "GARAGE SAINT FELIX",
  address: "13, Rue de l'Ouche de Versailles, 44000 Nantes",
  telephone: "02 40 74 04 22",
  average_rating: 4.3,
  review_count: 164,
  web_address: "https://reseau.citroen.fr/reparateur-nantes-14"
)

file = URI.open('https://www.allogarage.fr/images/logo_citroen_2020_x2.png')
garage.photo.attach(io: file, filename: "citroen", content_type: 'image/png')
garage.save!

puts "garage #{i} save ! "

i+=1

puts "garage #{i} create"

garage = Garage.new(
  name: "GARAGE DE LA CONVENTION",
  address: "46 Bis, Rue de la Convention, 44100 Nantes",
  telephone: "02 40 58 55 15",
  average_rating: 3.8,
  review_count: 85,
  web_address: "https://www.eurorepar.fr/garage-de-martel-de-la-convention-nantes-8453.html" 
)

file = URI.open('https://www.allogarage.fr/images/logo_euro_repar_car_service_x2.png')
garage.photo.attach(io: file, filename: "euro_repar", content_type: 'image/png')
garage.save!

puts "garage #{i} save ! "


puts "service contrôle technique"
service = Service.new(
  name: "controle technique",
  price: 250, 
  garage: Garage.first
)
service.save!

service = Service.new(
  name: "controle technique",
  price: 250, 
  garage: Garage.second
)
service.save!


service = Service.new(
  name: "controle technique",
  price: 250, 
  garage: Garage.third
)
service.save!

puts "contrôle technique done !"

puts "entretien"
service = Service.new(
  name: "entretien",
  price: 120, 
  garage: Garage.first
)
service.save!

service = Service.new(
  name: "entretien",
  price: 80, 
  garage: Garage.second
)
service.save!

service = Service.new(
  name: "entretien",
  price: 110, 
  garage: Garage.third
)
service.save!

service = Service.new(
  name: "entretien",
  price: 120, 
  garage: Garage.fourth
)
service.save!

service = Service.new(
  name: "entretien",
  price: 115, 
  garage: Garage.fifth
)
service.save!

puts "entretien done!"

puts "entretien vérif pneus"
service = Service.new(
  name: "vérification des pneus",
  price: 49.99, 
  garage: Garage.fifth
)
service.save!

service = Service.new(
  name: "vérification des pneus",
  price: 49.99, 
  garage: Garage.find_by(name: "SPEEDY Nantes la Durantière")
)
service.save!

service = Service.new(
  name: "vérification des pneus",
  price: 49.99, 
  garage: Garage.last
)
service.save!

puts "verif pneu done"
puts "verif des niveaux"
service = Service.new(
  name: "vérification des niveaux",
  price: 49.99, 
  garage: Garage.fourth
)
service.save!

service = Service.new(
  name: "vérification des niveaux",
  price: 49.99, 
  garage: Garage.find_by(name: "SPEEDY Nantes la Durantière")
)
service.save!

service = Service.new(
  name: "vérification des niveaux",
  price: 49.99, 
  garage: Garage.find_by(name: "GARAGE SAINT FELIX")
)
service.save!

puts "done !!!"
# filepath = "storage/garages.csv"
# i = 0
# puts "create garage nantes!"
# CSV.foreach(filepath, headers: :first_row) do |row|
#   puts "#{i} garage(s)"
#   garage = Garage.new(name: row['name'], address: row['address'], telephone: row['phone'], web_address: row['mail'])
#   garage.save
#   i+=1
# end
# puts "garage save !"
