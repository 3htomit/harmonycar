require "open-uri"

User.destroy_all
AlertCategory.destroy_all
Alert.destroy_all
Specification.destroy_all
Car.destroy_all

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
