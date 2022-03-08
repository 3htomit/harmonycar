require "open-uri"
require "csv"

Alert.destroy_all


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
