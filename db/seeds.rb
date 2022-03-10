require "open-uri"
require "csv"


User.destroy_all
AlertCategory.destroy_all
Alert.destroy_all
Specification.destroy_all
Car.destroy_all
Service.destroy_all
Garage.destroy_all
Document.destroy_all

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

user4 = User.create!(
  first_name: "Tim",
  last_name: "Boiteau",
  email: "tim@mail.com",
  password: "secret"
)

# SPECS

puts "Seeding car specs:"

spec1 = Specification.new(
  make: "Renault",
  model: "Espace V",
  fuel: "Diesel",
  critair: 2,
  engine: "Blue dCi 160",
  transmission: "Automatique",
  start_year: "04/06/2019",
  end_year: "01/12/20130")
file = File.open("db/fixtures/REspaceV_1.png")
spec1.photo.attach(io: file, filename: "spec1", content_type: 'image/png')
spec1.save
puts "> spec 1 created"

spec2 = Specification.new(
  make: "Renault",
  model: "Espace V",
  fuel: "Essence",
  critair: 3,
  engine: "1.8 TCe 225",
  transmission: "Automatique",
  start_year: "01/01/2018",
  end_year: "01/12/2030")
file = File.open("db/fixtures/REspaceV_2.png")
spec2.photo.attach(io: file, filename: "spec2", content_type: 'image/png')
spec2.save
puts "> spec 2 created"

spec3 = Specification.new(
  make: "Audi",
  model: "A4 Avant V",
  fuel: "Diesel",
  critair: 1,
  engine: "2.0 TDI136",
  transmission: "Automatique",
  start_year: "21/11/2011",
  end_year: "06/03/2013")
file = File.open("db/fixtures/AA4AvantV.png")
spec3.photo.attach(io: file, filename: "spec3", content_type: 'image/png')
spec3.save
puts "> spec 3 created"

spec4 = Specification.new(
  make: "Audi",
  model: "Audi A8",
  fuel: "Diesel",
  critair: 4,
  engine: "3.0 TDI286",
  transmission: "Automatique",
  start_year: "01/10/2017",
  end_year: "01/12/2030")
file = File.open("db/fixtures/AA8L.png")
spec4.photo.attach(io: file, filename: "spec4", content_type: 'image/png')
spec4.save
puts "> spec 4 created"

spec5 = Specification.new(
  make: "Ford",
  model: "Puma",
  fuel: "Essence",
  critair: 1,
  engine: "1.0 EcoB 125",
  transmission: "Manuelle",
  start_year: "01/11/2019",
  end_year: "01/12/2030")
file = File.open("db/fixtures/FPuma.png")
spec5.photo.attach(io: file, filename: "spec5", content_type: 'image/png')
spec5.save
puts "> spec 5 created"

spec6 = Specification.new(
  make: "Ford",
  model: "Focus",
  fuel: "Essence",
  critair: 1,
  engine: "1.5 EcoB 150",
  transmission: "Automatique",
  start_year: "15/05/2017",
  end_year: "02/06/2020")
file = File.open("db/fixtures/FFocus.png")
spec6.photo.attach(io: file, filename: "spec6", content_type: 'image/png')
spec6.save
puts "> spec 6 created"

spec7 = Specification.new(
  make: "Seat",
  model: "Arona",
  fuel: "Essence",
  critair: 2,
  engine: "1.0 ETSI 110",
  transmission: "Manuelle",
  start_year: "05/02/2021",
  end_year: "01/05/2021")
file = File.open("db/fixtures/SArona.png")
spec7.photo.attach(io: file, filename: "spec7", content_type: 'image/png')
spec7.save
puts "> spec 7 created"

spec8 = Specification.new(
  make: "Skoda",
  model: "Scala",
  fuel: "Manuelle",
  critair: 3,
  engine: "1.0 TSI 95",
  transmission: "Essence",
  start_year: "12/11/2021",
  end_year: "01/12/2030")
file = File.open("db/fixtures/SScala.png")
spec8.photo.attach(io: file, filename: "spec8", content_type: 'image/png')
spec8.save
puts "> spec 8 created"

spec9 = Specification.new(
  make: "Aston Martin",
  model: "DBS SuperLeggera",
  fuel: "Essence",
  critair: 5,
  engine: "V12 bi-turbo 5.2",
  transmission: "Manuelle",
  start_year: "01/12/2020",
  end_year: "01/12/2030")
file = File.open("db/fixtures/AMDBSSuperLeggera.png")
spec9.photo.attach(io: file, filename: "spec9", content_type: 'image/png')
spec9.save
puts "> spec 9 created"

spec10 = Specification.new(
  make: "BMW",
  model: "M4 Competition",
  fuel: "Essence",
  critair: 5,
  engine: " 3.0i 510ch",
  transmission: "Automatique",
  start_year: "01/03/2021",
  end_year: "01/12/2030")
file = File.open("db/fixtures/BM4.png")
spec10.photo.attach(io: file, filename: "spec10", content_type: 'image/png')
spec10.save
puts "> spec 10 created"

spec11 = Specification.new(
  make: "Fiat",
  model: "500 Cabriolet",
  fuel: "Essence",
  critair: 1,
  engine: "1.0 70 BSG",
  transmission: "Manuelle",
  start_year: "26/03/2015",
  end_year: "03/01/2022")
file = File.open("db/fixtures/F500C.png")
spec11.photo.attach(io: file, filename: "spec11", content_type: 'image/png')
spec11.save
puts "> spec 11 created"

spec12 = Specification.new(
  make: "Citroën",
  model: "Grand C4 SpaceTourer",
  fuel: "Essence",
  critair: 2,
  engine: "1.5 BlueHDi130",
  transmission: "Manuelle",
  start_year: "01/04/2018",
  end_year: "01/01/2021")
file = File.open("db/fixtures/CSpaceTourer.png")
spec12.photo.attach(io: file, filename: "spec12", content_type: 'image/png')
spec12.save
puts "> spec 12 created"

spec13 = Specification.new(
  make: "Citroën",
  model: "C5 AirCross",
  fuel: "Essence",
  critair: 1,
  engine: "1.6 THP 16v",
  transmission: "Automatique",
  start_year: "01/09/2018",
  end_year: "01/12/2030")
file = File.open("db/fixtures/CC5Aircross.png")
spec13.photo.attach(io: file, filename: "spec13", content_type: 'image/png')
spec13.save
puts "> spec 13 created"

spec14 = Specification.new(
  make: "Bat",
  model: "Batmobile",
  fuel: "Nucléaire",
  critair: 1,
  engine: "TurboJet",
  transmission: "BatManuelle",
  start_year: "23/08/2013",
  end_year: "03/07/2020")
file = File.open("db/fixtures/BatMobile.png")
spec14.photo.attach(io: file, filename: "spec14", content_type: 'image/png')
spec14.save
puts "> spec 14 created"

spec15 = Specification.new(
  make: "Audi",
  model: "A3 Sportback",
  fuel: "Essence",
  critair: 1,
  engine: "1.5 TFSI 150",
  transmission: "Manuelle",
  start_year: "01/06/2020",
  end_year: "01/12/2030")
file = File.open("db/fixtures/AA3Sportback.png")
spec15.photo.attach(io: file, filename: "spec15", content_type: 'image/png')
spec15.save
puts "> spec 15 created"

spec16 = Specification.new(
  make: "DeLorean",
  model: "DMC-12",
  fuel: "Quantique",
  critair: 0,
  engine: "Quantic Light",
  transmission: "Manuelle",
  start_year: "30/10/1985",
  end_year: "21/10/2015")
file = File.open("db/fixtures/BTFDelorean.png")
spec16.photo.attach(io: file, filename: "spec16", content_type: 'image/png')
spec16.save
puts "> spec 16 created"

spec17 = Specification.new(
  make: "BMW",
  model: "X7",
  fuel: "Diesel",
  critair: 2,
  engine: "3.0d 340",
  transmission: "Automatique",
  start_year: "01/10/2018",
  end_year: "01/12/2030")
file = File.open("db/fixtures/BX7.png")
spec17.photo.attach(io: file, filename: "spec17", content_type: 'image/png')
spec17.save
puts "> spec 17 created"

spec18 = Specification.new(
  make: "BMW",
  model: "Z4 Roadster",
  fuel: "Essence",
  critair: 1,
  engine: "2.0i 197",
  transmission: "Automatique",
  start_year: "01/03/2019",
  end_year: "01/12/2030")
file = File.open("db/fixtures/BZ4M.png")
spec18.photo.attach(io: file, filename: "spec18", content_type: 'image/png')
spec18.save
puts "> spec 18 created"

spec19 = Specification.new(
  make: "Mercedes",
  model: "Classe C Break",
  fuel: "Essence",
  critair: 1,
  engine: "200d 160ch",
  transmission: "Automatique",
  start_year: "01/01/2014",
  end_year: "01/04/2021")
file = File.open("db/fixtures/MClassCBreak.png")
spec19.photo.attach(io: file, filename: "spec19", content_type: 'image/png')
spec19.save
puts "> spec 19 created"

spec20 = Specification.new(
  make: "Peugeot",
  model: "5008 II",
  fuel: "Diesel",
  critair: 1,
  engine: "1.5 BlueHDi 130",
  transmission: "Automatique",
  start_year: "01/05/2017",
  end_year: "01/04/2030")
file = File.open("db/fixtures/P5008II.png")
spec20.photo.attach(io: file, filename: "spec20", content_type: 'image/png')
spec20.save
puts "> spec 20 created"


# CARS

puts "Seeding cars:"

car1 = Car.create!(number_plate: "GF-883-DA", mileage: 44_000, user: user1, specification: spec1)
puts "> car 1 created"
car2 = Car.create(number_plate: "GD-232-TD", mileage: 30_000, user: user1, specification: spec3)
puts "> car 2 created"
car3 = Car.create(number_plate: "GF-220-HR", mileage: 10_000, user: user2, specification: spec6)
puts "> car 3 created"
car4 = Car.create(number_plate: "LW-997-NT", mileage: 45_000, user: user4, specification: spec15)


document1 = Document.new(
  name: "facture",
  car: car4)
file = File.open("db/fixtures/facture-specimen.png")
document1.document.attach(io: file, filename: "doc1", content_type: 'image/png')
document1.save
puts "doc1 created"

document2 = Document.new(
  name: "contrôle technique",
  car: car4)
file = File.open("db/fixtures/controle-tech-specimen.png")
document2.document.attach(io: file, filename: "doc2", content_type: 'image/png')
document2.save
puts "doc2 created"

document3 = Document.new(
  name: "carte grise",
  car: car4)
file = File.open("db/fixtures/carte-grise-specimen.png")
document3.document.attach(io: file, filename: "doc3", content_type: 'image/png')
document3.save
puts "doc3 created"

# ALERT CATEGORIES

puts "Seeding alert categories:"

alert_category1 = AlertCategory.create!(
  name: "Contrôle technique",
  description: "Le contrôle technique concerne les véhicules de tourisme et utilitaires légers, de 4 ans et plus, à renouveler tous les 2 ans.",
  max_weeks: 12
)
puts "> alert category 1 created"

alert_category2 = AlertCategory.create!(
  name: "Entretien",
  description: "La révision consiste à examiner, à intervalles réguliers, les différents composants d’un véhicule, pour maximiser sa fiabilité, sa performance et sa longévité.",
  max_weeks: 4
)
puts "> alert category 2 created"

alert_category3 = AlertCategory.create!(
  name: "Vérification des pneus",
  description: "Si vous conduisez avec des pneus sur ou sous gonflés vous mettez en danger votre sécurité. La bonne pression est un facteur de sécurité, de longévité de vos pneus et de consommation de carburant réduite.",
  max_weeks: 1
)
puts "> alert category 3 created"

alert_category4 = AlertCategory.create!(
  name: "Vérification des niveaux",
  description: "Vérifiez les niveaux des fluides d’une voiture régulièrement ou avant un long trajet, afin de conserver une voiture en bon état et garantir la sécurité de tous sur la route.",
  max_weeks: 1
)
puts "> alert category 4 created"


#  CAR ALERTS

puts "Seeding car alerts:"

alert1 = Alert.create!(
  car: Car.first,
  alert_category: AlertCategory.first,
  due_date: Date.today-2.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 1 created"

alert2 = Alert.create!(
  car: Car.first,
  alert_category: AlertCategory.second,
  due_date: Date.today+112.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 2 created"

alert3 = Alert.create!(
  car: Car.first,
  alert_category: AlertCategory.third,
  due_date: Date.today-32.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 3 created"

alert4 = Alert.create!(
  car: Car.first,
  alert_category: AlertCategory.fourth,
  due_date: Date.today+292.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 4 created"

alert5 = Alert.create!(
  car: Car.second,
  alert_category: AlertCategory.first,
  due_date: Date.today+462.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 5 created"

alert6 = Alert.create!(
  car: Car.second,
  alert_category: AlertCategory.second,
  due_date: Date.today+362.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 6 created"

alert7 = Alert.create!(
  car: Car.second,
  alert_category: AlertCategory.third,
  due_date: Date.today-12.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 7 created"

alert8 = Alert.create!(
  car: Car.second,
  alert_category: AlertCategory.fourth,
  due_date: Date.today-32.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 8 created"

alert9 = Alert.create!(
  car: Car.third,
  alert_category: AlertCategory.first,
  due_date: Date.today+362.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 9 created"

alert10 = Alert.create!(
  car: Car.third,
  alert_category: AlertCategory.second,
  due_date: Date.today+15.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 10 created"

alert11 = Alert.create!(
  car: Car.third,
  alert_category: AlertCategory.third,
  due_date: Date.today-132.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 11 created"

alert12 = Alert.create!(
  car: Car.third,
  alert_category: AlertCategory.fourth,
  due_date: Date.today,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 12 created"


alert13 = Alert.create!(
  car: Car.fourth,
  alert_category: AlertCategory.first,
  due_date: Date.today-30.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 13 created"

alert14 = Alert.create!(
  car: Car.fourth,
  alert_category: AlertCategory.second,
  due_date: Date.today+15.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 14 created"

alert15 = Alert.create!(
  car: Car.fourth,
  alert_category: AlertCategory.third,
  due_date: Date.today+2.weeks,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 15 created"

alert16 = Alert.create!(
  car: Car.fourth,
  alert_category: AlertCategory.fourth,
  due_date: Date.today+2.weeks,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)
puts "> alert 16 created"
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
garage.photos.attach(io: file, filename: "bosch", content_type: 'image/png')
file = URI.open('https://www.garage-des-hauts-paves.fr/s/img/emotionheader.jpg?1643209229.920px.240px')
garage.photos.attach(io: file, filename: "bosch", content_type: 'image/png')
garage.save!
puts "> garage 1 created"

garage = Garage.new(
  name: "Garage L. Thibaud",
  address: "33 Quai de Versailles, 44000 Nantes",
  telephone: "02 40 20 33 29",
  average_rating: 4,
  review_count: 120,
  web_address: "https://www.allogarage.fr/garages/details-garage-Versailles-44-Garage-L-THIBAUD-22710.html"
)
file = URI.open('https://www.allogarage.fr/images/logo_precisium_x2.png')
garage.photos.attach(io: file, filename: "precision", content_type: 'image/png')
file = URI.open('https://www.allogarage.fr/stv/640x480/22710_d7246dd4.jpg')
garage.photos.attach(io: file, filename: "precision", content_type: 'image/png')
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
garage.photos.attach(io: file, filename: "bosch", content_type: 'image/png')
file = URI.open('https://www.allogarage.fr/stv/640x480/10586_6fc3bff3.jpg')
garage.photos.attach(io: file, filename: "bosch", content_type: 'image/png')
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
garage.photos.attach(io: file, filename: "feu_vert", content_type: 'image/png')
file = URI.open('http://www.eurekcar.fr/docroot/upload/pro/15458-1.jpg')
garage.photos.attach(io: file, filename: "bosch", content_type: 'image/png')
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
garage.photos.attach(io: file, filename: "ad", content_type: 'image/png')
file = URI.open('https://images.ad.fr/SIA-images/028DIS/625x275/028DIS_737_Facade_2011_05_23_11_33_03_A.jpg')
garage.photos.attach(io: file, filename: "ad", content_type: 'image/png')
garage.save!
puts "> garage 5 created"

garage = Garage.new(
  name: "Garage de L'Abbaye",
  address: "4, Rue Chaptal, 44100 Nantes",
  telephone: "02 40 73 75 75",
  average_rating: 3.9,
  review_count: 327,
  web_address: "https://pros.lacentrale.fr/C032507/"
)
file = URI.open('https://www.allogarage.fr/images/logo_dacia_x2.png')
garage.photos.attach(io: file, filename: "dacia", content_type: 'image/png')
file = URI.open('https://www.pagesjaunes.fr/media/resto/garage_de_l_abbaye_OSD00208583-19602.jpeg')
garage.photos.attach(io: file, filename: "dacia", content_type: 'image/png')
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
garage.photos.attach(io: file, filename: "renaud", content_type: 'image/png')
file = URI.open('https://www.pagesjaunes.fr/media/resto/garage_copernic_OSD00208558-19599.jpeg?w=400&h=300')
garage.photos.attach(io: file, filename: "renaud", content_type: 'image/png')
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
garage.photos.attach(io: file, filename: "speedy", content_type: 'image/png')
file = URI.open('https://centres-auto.speedy.fr/hostedimages/23/1')
garage.photos.attach(io: file, filename: "speedy", content_type: 'image/png')
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
garage.photos.attach(io: file, filename: "citroen", content_type: 'image/png')
file = URI.open('https://autodir.ca/datas/google-photo/cc443924d93f18c0600529d973f11957-Garage-St-Felix-Saint-Felix-de-Valois-QC-Canada-AutoDir.jpg')
garage.photos.attach(io: file, filename: "citroen", content_type: 'image/png')
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
garage.photos.attach(io: file, filename: "euro_repar", content_type: 'image/png')
file = URI.open('https://www.eurorepar.fr/cache/media/garage/garage_image/enseigne-entree-patrick-oudin-717828ff38dae820668184ddeee41d86-640-480-crop-16777215.jpeg')
garage.photos.attach(io: file, filename: "euro_repar", content_type: 'image/png')
garage.save!
puts "> garage 10 created"


# SERVICES

puts "Seeding 'contrôle technique':"

service = Service.new(
  name: "Contrôle technique",
  price: 250,
  garage: Garage.first
)
service.save!
puts "> service 1 created"

service = Service.new(
  name: "Contrôle technique",
  price: 250,
  garage: Garage.second
)
service.save!
puts "> service 2 created"

service = Service.new(
  name: "Contrôle technique",
  price: 250,
  garage: Garage.third
)
service.save!
puts "> service 3 created"

puts "Seeding 'Entretien':"

service = Service.new(
  name: "Entretien",
  price: 120,
  garage: Garage.first
)
service.save!
puts "> service 1 created"

service = Service.new(
  name: "Entretien",
  price: 80,
  garage: Garage.second
)
service.save!
puts "> service 2 created"

service = Service.new(
  name: "Entretien",
  price: 110,
  garage: Garage.third
)
service.save!
puts "> service 3 created"

service = Service.new(
  name: "Entretien",
  price: 120,
  garage: Garage.fourth
)
service.save!
puts "> service 4 created"

service = Service.new(
  name: "Entretien",
  price: 115,
  garage: Garage.fifth
)
service.save!
puts "> service 5 created"

puts "Seeding 'Vérification des pneus':"

service = Service.new(
  name: "Vérification des pneus",
  price: 49.99,
  garage: Garage.find_by(name: "Garage de L'Abbaye")
)
service.save!
puts "> service 1 created"

service = Service.new(
  name: "Vérification des pneus",
  price: 49.99,
  garage: Garage.find_by(name: "Speedy Nantes la Durantière")
)
service.save!
puts "> service 2 created"

service = Service.new(
  name: "Vérification des pneus",
  price: 49.99,
  garage: Garage.last
)
service.save!
puts "> service 3 created"

puts "Seeding 'Vérification des niveaux':"

service = Service.new(
  name: "Vérification des niveaux",
  price: 49.99,
  garage: Garage.find_by(name: "Garage Laennec")
)
service.save!
puts "> service 1 created"

service = Service.new(
  name: "Vérification des niveaux",
  price: 49.99,
  garage: Garage.find_by(name: "Speedy Nantes la Durantière")
)
service.save!
puts "> service 2 created"

service = Service.new(
  name: "Vérification des niveaux",
  price: 49.99,
  garage: Garage.find_by(name: "Garage Saint Felix")
)
service.save!
puts "> service 3 created"
