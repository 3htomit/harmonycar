require "open-uri"
require "csv"

Specification.destroy_all


# SPECS

puts "Seeding car specs:"

spec1 = Specification.new(
  make: "Renault",
  model: "Espace",
  fuel: "Diesel",
  critair: 2,
  engine: "Blue dCi 160",
  transmission: "Automatique",
  start_year: "04/06/2019",
  end_year: "17/12/2019")
file = URI.open('https://imgservprod.bymycar.fr/image/?apikey=437fe90bfc2e7879f0953434890aa246&url=https://feassets.bymycar.fr/art/makes/models/banners/Renault-Espace-21316.jpg&dpr=2&w=352&h=120&t=square&a=center&fit=contain&q=50&output=jpg&bg=ffffff')
spec1.photo.attach(io: file, filename: "spec1", content_type: 'image/png')
spec1.save
puts "> spec 1 created"

spec2 = Specification.new(
  make: "Renault",
  model: "Espace",
  fuel: "Essence",
  critair: 3,
  engine: "1.8 TCe 225",
  transmission: "Automatique",
  start_year: "01/01/2018",
  end_year: "05/11/2018")
file = URI.open('https://img-v2.allopneus.com/api/v2/transformation/vehicle/vehicle_motorisation/62749.jpg')
spec2.photo.attach(io: file, filename: "spec2", content_type: 'image/png')
spec2.save
puts "> spec 2 created"

spec3 = Specification.new(
  make: "Audi",
  model: "A4 V",
  fuel: "Diesel",
  critair: 1,
  engine: "2.0 TDI136",
  transmission: "Automatique",
  start_year: "21/11/2011",
  end_year: "06/03/2013")
file = URI.open('https://www.mecatrouve.com/image-500/code/aHR0cHM6Ly93ZWJzZXJ2aWNlLnRlY2FsbGlhbmNlLnNlcnZpY2VzL3BlZ2FzdXMtMy0wL2RvY3VtZW50cy8zNTQvRFIxMTcxMTAvMA%3D%3D.jpg')
spec3.photo.attach(io: file, filename: "spec3", content_type: 'image/png')
spec3.save
puts "> spec 3 created"

spec4 = Specification.new(
  make: "Audi",
  model: "Audi A8 IV",
  fuel: "Diesel",
  critair: 4,
  engine: "3.0 TDI286",
  transmission: "Automatique",
  start_year: "01/10/2017",
  end_year: "")
file = URI.open('https://www.autokoo.com/assets/images/jato_400/AUDI/A8/2012/4SA_270.JPG')
spec4.photo.attach(io: file, filename: "spec4", content_type: 'image/png')
spec4.save
puts "> spec 4 created"

spec5 = Specification.new(
  make: "Ford",
  model: "Ford Cougar",
  fuel: "Essence",
  critair: 4,
  engine: "2.0",
  transmission: "Manuelle",
  start_year: "01/12/1999",
  end_year: "01/11/2000")
file = URI.open('https://img-v2.allopneus.com/api/v2/transformation/vehicle/vehicle_motorisation/1408.jpg')
spec5.photo.attach(io: file, filename: "spec5", content_type: 'image/png')
spec5.save
puts "> spec 5 created"

spec6 = Specification.new(
  make: "Ford",
  model: "Ford Fiesta V",
  fuel: "Essence",
  critair: 3,
  engine: "1.0 EcoB 100",
  transmission: "Automatique",
  start_year: "15/05/2017",
  end_year: "02/06/2020")
file = URI.open('https://sf2.auto-moto.com/wp-content/uploads/sites/9/2019/04/autowp.ru_ford_fiesta_5-door_12-547x410.jpg')
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
file = URI.open('https://seat-aix-en-provence.com/sites/default/files/images/SEAT/pages/seat-aix-en-provence-nouvelle-arona.png')
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
  end_year: "")
file = URI.open('https://cdn.drivek.it/configurator-icon/cars/fr/$original$/SKODA/SCALA/33021_BERLINE-A-HAYON-5-PORTES/skoda-scala-hatchback-2019-side-view.png')
spec8.photo.attach(io: file, filename: "spec8", content_type: 'image/png')
spec8.save
puts "> spec 8 created"

spec9 = Specification.new(
  make: "Bentley",
  model: "Arnage",
  fuel: "Essence",
  critair: 5,
  engine: "V8 6.7",
  transmission: "Manuelle",
  start_year: "01/09/2004",
  end_year: "01/12/2009")
file = URI.open('https://azureweddingcars.co.uk/wp-content/uploads/2016/04/Wedding-Cars-Bentley-Arnage.png')
spec9.photo.attach(io: file, filename: "spec9", content_type: 'image/png')
spec9.save
puts "> spec 9 created"

spec10 = Specification.new(
  make: "BMW",
  model: "M5 Touring",
  fuel: "Essence",
  critair: 5,
  engine: "5.0 V10",
  transmission: "Automatique",
  start_year: "26/03/2007",
  end_year: "01/09/2010")
file = URI.open('https://s3-eu-west-1.amazonaws.com/staticeu.izmocars.com/toolkit/commonassets/2020/20bmw/20bmw520dtouringluxwg7rb/20bmw520dtouringluxwg7rb_animations/colorpix/fr/640x480/bmw_20520dtouringluxwg7rb_bluestonemetallise.jpg')
spec10.photo.attach(io: file, filename: "spec10", content_type: 'image/png')
spec10.save
puts "> spec 10 created"

spec11 = Specification.new(
  make: "Fiat",
  model: "500",
  fuel: "Essence",
  critair: 5,
  engine: "1.0 70 BSG",
  transmission: "Manuelle",
  start_year: "26/03/2007",
  end_year: "03/01/2022")
file = URI.open('https://www.auto-ici.fr/uploads/file/photos_modeles/fiat/500_serie_8_euro_6d-temp-201912/fiat-500-serie-7-profil-5f16da4eeb6de.jpg?v=30.06.2021')
spec11.photo.attach(io: file, filename: "spec11", content_type: 'image/png')
spec11.save
puts "> spec 11 created"

spec12 = Specification.new(
  make: "Citroën",
  model: "C1",
  fuel: "Essence",
  critair: 4,
  engine: "1.0 VTi",
  transmission: "Manuelle",
  start_year: "26/03/2007",
  end_year: "01/04/2019")
file = URI.open('https://www.largus.fr/images/photos/rsi/_G_JPG/Voitures/CITROEN/C1/_II/Ph1/Berline_3_portes/profil.jpg')
spec12.photo.attach(io: file, filename: "spec12", content_type: 'image/png')
spec12.save
puts "> spec 12 created"

spec13 = Specification.new(
  make: "Citroën",
  model: "C3 Picasso",
  fuel: "Essence",
  critair: 2,
  engine: "1.6 BlueHDi100",
  transmission: "Manuelle",
  start_year: "23/08/2014",
  end_year: "03/07/2017")
file = URI.open('https://www.largus.fr/images/photos/rsi/_G_JPG/Voitures/CITROEN/C1/_II/Ph1/Berline_3_portes/profil.jpg')
spec13.photo.attach(io: file, filename: "spec13", content_type: 'image/png')
spec13.save
puts "> spec 13 created"

spec14 = Specification.new(
  make: "Bat",
  model: "Batmobile",
  fuel: "Nucléaire",
  critair: 1,
  engine: "Batmoteur",
  transmission: "BatManuelle",
  start_year: "23/08/2013",
  end_year: "03/07/2020")
file = URI.open('https://espritpopshop.fr/wp-content/uploads/2021/04/batman-1-32-2.jpg')
spec14.photo.attach(io: file, filename: "spec14", content_type: 'image/png')
spec14.save
puts "> spec 14 created"
