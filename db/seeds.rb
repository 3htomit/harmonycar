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
