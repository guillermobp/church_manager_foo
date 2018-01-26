# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Countries
country = Country.create(name: "Chile", international_name: "Chile")

region_metadata = FirstCountryAdministrativeLevelMetadatum.create(name: "Región", international_name: "Region", country: country)
province_metadata = SecondCountryAdministrativeLevelMetadatum.create(name: "Provincia", international_name: "Province", country: country)
commune_metadata = ThirdCountryAdministrativeLevelMetadatum.create(name: "Comuna", international_name: "Commune", country: country)

# Chile
# Región de Los Ríos
region = CountryAdministrativeLevel.create(name: "De Los Ríos", country: country)
# ## Provincia de Valdivia
province = CountryAdministrativeLevel.create(name: "Valdivia", country: country, first_level_id: region.id)
# #### Comunas
commune = CountryAdministrativeLevel.create(name: "Corral", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Lanco", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Los Lagos", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Mariquina", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Máfil", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Paillaco", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Panguipulli", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Valdivia", country: country, first_level_id: region.id, second_level_id: province.id)
# ## Provincia Del Ranco
province = CountryAdministrativeLevel.create(name: "Del Ranco", country: country, first_level_id: region.id)
# #### Comunas
commune = CountryAdministrativeLevel.create(name: "La Unión", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Futrono", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Río Bueno", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Lago Ranco", country: country, first_level_id: region.id, second_level_id: province.id)
# Region del Biobío
region = CountryAdministrativeLevel.create(name: "Del Biobío", country: country)
# ## Provincias
province = CountryAdministrativeLevel.create(name: "Arauco", country: country, first_level_id: region.id)
province = CountryAdministrativeLevel.create(name: "Biobío", country: country, first_level_id: region.id)
province = CountryAdministrativeLevel.create(name: "Concepción", country: country, first_level_id: region.id)
# #### Comunas
commune = CountryAdministrativeLevel.create(name: "Concepción", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Coronel", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Chiguayante", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Florida", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Hualpén", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Hualqui", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Lota", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Penco", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "San Pedro de la Paz", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Santa Juana", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Talcahuano", country: country, first_level_id: region.id, second_level_id: province.id)
commune = CountryAdministrativeLevel.create(name: "Tomé", country: country, first_level_id: region.id, second_level_id: province.id)
# ## Provincias
province = CountryAdministrativeLevel.create(name: "Ñuble", country: country, first_level_id: region.id)
# Región Metropolitana
region = CountryAdministrativeLevel.create(name: "Metropolitana", country: country)
# ## Provincias
province = CountryAdministrativeLevel.create(name: "Santiago", country: country, first_level_id: region.id)
# #### Comunas
commune = CountryAdministrativeLevel.create(name: "Providencia", country: country, first_level_id: region.id, second_level_id: province.id)

church = Church.create(name: "Parroquia San Agustín de Concepción")

Address.create(street_name: "Castellón", street_number: 254, reference: "Entre Lord Cochrane y San Martín", zip_code: "4070124", latitude: -36.827810, longitude: -73.045677, country_administrative_level: commune, church: church)
