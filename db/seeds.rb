require "open-uri"

User.destroy_all
AlertCategory.destroy_all
Alert.destroy_all

puts "Beginning to create users"

user1 = User.new(
  first_name: "Marie",
  last_name: "Dupont",
  email: "marie@mail.com",
  password: "secret"
)

user1.save

puts "User 1 saved"

user2 = User.new(
  first_name: "Dominique",
  last_name: "Bernard",
  email: "dominique@mail.com",
  password: "secret"
)

user2.save

puts "User 2 saved"

user3 = User.new(
  first_name: "Pauline",
  last_name: "Le Roux",
  email: "pauline@mail.com",
  password: "secret"
)

user3.save

puts "User 3 saved"

puts "Beginning to create alert category"

alert_category1 = AlertCategory.new(
  name: "Contrôle technique",
  description: "Le contrôle technique concerne les véhicules de tourisme et utilitaires légers, de 4 ans et plus, à renouveler tous les 2 ans."
)

alert_category1.save

puts "Alert category 1 saved"

alert_category2 = AlertCategory.new(
  name: "Entretien",
  description: "La révision consiste à examiner, à intervalles réguliers, les différents composants d’un véhicule, pour maximiser sa fiabilité, sa performance et sa longévité."
)

alert_category2.save

puts "Alert category 2 saved"

alert_category3 = AlertCategory.new(
  name: "Vérfication des pneus",
  description: "Si vous conduisez avec des pneus sur ou sous gonflés vous mettez en danger votre sécurité. La bonne pression est un facteur de sécurité, de longévité de vos pneus et de consommation de carburant réduite."
)

alert_category3.save

puts "Alert category 3 saved"

alert_category4 = AlertCategory.new(
  name: "Vérfication des niveaus",
  description: "Vérifiez les niveaux des fluides d’une voiture régulièrement ou avant un long trajet, afin de conserver une voiture en bon état et garantir la sécurité de tous sur la route."
)

alert_category4.save

puts "Alert category 4 saved"

puts "Beginning to create alerts"

alert1 = Alert.new(
  car_id: Car.first,
  alert_category_id: AlertCategory.first,
  due_date: Date.today-2.days,
  due_km: 125_000,
  completed: false,
  completed_at: nil
)

alert1.save

puts "Alert 1 saved"

alert2 = Alert.new(
  car_id: Car.second,
  alert_category_id: AlertCategory.second,
  due_date: Date.today+145.days,
  due_km: 75_000,
  completed: true,
  completed_at: Date.today-220.days
)

alert1.save

puts "Alert 2 saved"

alert3 = Alert.new(
  car_id: Car.third,
  alert_category_id: AlertCategory.third,
  due_date: Date.today+15.days,
  due_km: 101_000,
  completed: true,
  completed_at: Date.today-90.days
)

alert1.save

puts "Alert 3 saved"

alert4 = Alert.new(
  car_id: Car.third,
  alert_category_id: AlertCategory.fourth,
  due_date: Date.today-5.days,
  due_km: 56_000,
  completed: false,
  completed_at: nil
)

alert1.save

puts "Alert 4 saved"

spec1 = Specification.create({
  make: "Renault",
  model: "Espace",
  fuel: "Diesel",
  critair: "2",
  engine: "Blue dCi 160",
  transmission: "Automatique",
  start_year: "04/06/2019",
  end_year: "17/12/2019"})
file = URI.open('https://sf2.autojournal.fr/wp-content/uploads/autojournal/2020/11/Renault_Espace_2019_55c6e.jpg')
spec1.photo.attach(io: file, filename: "spec1", content_type: 'image/png')

spec2 = Specification.create({
  make: "Renault",
  model: "Espace",
  fuel: "Essence",
  critair: "3",
  engine: "1.8 TCe 225",
  transmission: "Automatique",
  start_year: "01/01/2018",
  end_year: "05/11/2018"})
file = URI.open('https://sf1.auto-moto.com/wp-content/uploads/sites/9/2018/11/93213_2017_-_essais_presse_renault_espace_initiale_paris_model_year_2017.jpg')
spec2.photo.attach(io: file, filename: "spec2", content_type: 'image/png')

spec3 = Specification.create({
  make: "Audi",
  model: "A4 V",
  fuel: "Diesel",
  critair: "1",
  engine: "2.0 TDI136",
  transmission: "Automatique",
  start_year: "21/11/2011",
  end_year: "06/03/2013"})
file = URI.open('https://zeperfs.com/photos/3068-f.jpg')
spec3.photo.attach(io: file, filename: "spec3", content_type: 'image/png')

spec4 = Specification.create({
  make: "Audi",
  model: "Audi A8 IV",
  fuel: "Diesel",
  critair: "4",
  engine: "3.0 TDI286",
  transmission: "Automatique",
  start_year: "01/10/2017",
  end_year: ""})
file = URI.open('https://www.larevueautomobile.com/images/fiche-technique/2019/Audi/A8-L/Audi_A8-L_MD_1.jpg')
spec4.photo.attach(io: file, filename: "spec4", content_type: 'image/png')

spec5 = Specification.create({
  make: "Ford",
  model: "Ford Cougar",
  fuel: "Essence",
  critair: "4",
  engine: "2.0",
  transmission: "Manuelle",
  start_year: "01/12/1999",
  end_year: "01/11/2000"})
file = URI.open('https://zeperfs.com/photos/447-f.jpg')
spec5.photo.attach(io: file, filename: "spec5", content_type: 'image/png')

spec6 = Specification.create({
  make: "Ford",
  model: "Ford Fiesta V",
  fuel: "Essence",
  critair: "3",
  engine: "1.0 EcoB 100",
  transmission: "Automatique",
  start_year: "15/05/2017",
  end_year: "02/06/2020"})
file = URI.open('https://cdn.vroom.be/media/public/articles/None/gallery/17738/2017_ford_fiesta_titanium_01.jpg')
spec6.photo.attach(io: file, filename: "spec6", content_type: 'image/png')

spec7 = Specification.create({
  make: "Seat",
  model: "Arona",
  fuel: "Essence",
  critair: "2",
  engine: "1.0 ETSI 110",
  transmission: "Manuelle",
  start_year: "05/02/2021",
  end_year: "01/05/2021"})
file = URI.open('https://gcm.moniteurautomobile.be/imgcontrol/c680-d465/clients/moniteur/content/medias/images/test_drives/10000/600/40/2022-seat-arona-20.jpg')
spec7.photo.attach(io: file, filename: "spec7", content_type: 'image/png')

spec8 = Specification.create({
  make: "Skoda",
  model: "Scala",
  fuel: "Manuelle",
  critair: "3",
  engine: "1.0 TSI 95",
  transmission: "Essence",
  start_year: "12/11/2021",
  end_year: ""})
file = URI.open('https://www.automobile-magazine.fr/asset/cms/840x394/156849/config/110245/cette-scala-reprend-la-plate-forme-des-petites-volkswagen-polo-ou-seat-ibiza-mais-soigne-davantage-le-confort.jpg')
spec8.photo.attach(io: file, filename: "spec8", content_type: 'image/png')

spec9 = Specification.create({
  make: "Bentley",
  model: "Arnage",
  fuel: "Essence",
  critair: "5",
  engine: "V8 6.7",
  transmission: "Manuelle",
  start_year: "01/09/2004",
  end_year: "01/12/2009"})
file = URI.open('https://www.autodata1.com/media/bentley/pics/bentley-arnage-r-[576].jpg')
spec9.photo.attach(io: file, filename: "spec9", content_type: 'image/png')

spec10 = Specification.create({
  make: "BMW",
  model: "M5 Touring",
  fuel: "Essence",
  critair: "5",
  engine: "5.0 V10",
  transmission: "Automatique",
  start_year: "26/03/2007",
  end_year: "01/09/2010"})
file = URI.open('https://s1.cdn.autoevolution.com/images/gallery/BMWM5Touring-1235_1.jpg')
spec10.photo.attach(io: file, filename: "spec10", content_type: 'image/png')


car1 = Car.create({number_plate: "GF-883-DA", mileage: 44_000, user_id: User.second, specification_id: spec4.id})
car2 = Car.create({number_plate: "GD-232-TD", mileage: 30_000, user_id: User.third, specification_id: spec8.id})
car3 = Car.create({number_plate: "GF-220-HR", mileage: 10_000, user_id: User.third, specification_id: spec6.id})
