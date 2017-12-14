# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
country = Country.create(name: "Chile", international_name: "Chile")

country.cities.create(name: "Santiago", international_name: "Santiago")
country.cities.create(name: "Valdivia", international_name: "Valdivia")
city = country.cities.create(name: "Concepción", international_name: "Concepción")

church = Church.create(name: "Parroquia San Agustín de Concepción")

Address.create(street_name: "Castellón", street_number: 254, reference: "Entre Lord Cochrane y San Martín", zip_code: "4070124", latitude: -36.827810, longitude: -73.045677, city: city, church: church)
