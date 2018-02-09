# Región de Los Ríos
region = Region.create(name: "De Los Ríos")
# ## Provincia de Valdivia
province = Province.create(name: "Valdivia", region: region)
# #### Comunas
commune = Commune.create(name: "Corral", province: province)
commune = Commune.create(name: "Lanco", province: province)
commune = Commune.create(name: "Los Lagos", province: province)
commune = Commune.create(name: "Mariquina", province: province)
commune = Commune.create(name: "Máfil", province: province)
commune = Commune.create(name: "Paillaco", province: province)
commune = Commune.create(name: "Panguipulli", province: province)
commune = Commune.create(name: "Valdivia", province: province)
# ## Provincia Del Ranco
province = Province.create(name: "Del Ranco", region: region)
# #### Comunas
commune = Commune.create(name: "La Unión", province: province)
commune = Commune.create(name: "Futrono", province: province)
commune = Commune.create(name: "Río Bueno", province: province)
commune = Commune.create(name: "Lago Ranco", province: province)
# Region del Biobío
region = Region.create(name: "Del Biobío")
# ## Provincias
province = Province.create(name: "Arauco", region: region)
province = Province.create(name: "Biobío", region: region)
province = Province.create(name: "Concepción", region: region)
# #### Comunas
commune = Commune.create(name: "Concepción", province: province)
church = Church.create(name: "Parroquia San Agustín de Concepción", manager: "Juliano")
address = Address.create(street_name: "Castellón", street_number: 254, reference: "Entre Lord Cochrane y San Martín", zip_code: "4070124", latitude: -36.827810, longitude: -73.045677, commune: commune, church: church)

commune = Commune.create(name: "Coronel", province: province)
commune = Commune.create(name: "Chiguayante", province: province)
commune = Commune.create(name: "Florida", province: province)
commune = Commune.create(name: "Hualpén", province: province)
commune = Commune.create(name: "Hualqui", province: province)
commune = Commune.create(name: "Lota", province: province)
commune = Commune.create(name: "Penco", province: province)
commune = Commune.create(name: "San Pedro de la Paz", province: province)
commune = Commune.create(name: "Santa Juana", province: province)
commune = Commune.create(name: "Talcahuano", province: province)
commune = Commune.create(name: "Tomé", province: province)
# ## Provincias
province = Province.create(name: "Ñuble", region: region)
# Región Metropolitana
region = Region.create(name: "Metropolitana")
# ## Provincias
province = Province.create(name: "Santiago", region: region)
# #### Comunas
commune = Commune.create(name: "Providencia", province: province)

contact = Contact.create(church: church, full_name: 'John Doe')
email = Email.create(contact: contact, address: 'jdoe@yahoo.com', is_verified: true)
email = Email.create(contact: contact, address: 'jdoe@outlook.com', is_verified: false)
email = Email.create(contact: contact, address: 'jdoe@gmail.com', is_verified: true)
phone = Phone.create(contact: contact, country_code: 56, number: 412957490)
phone = Phone.create(contact: contact, country_code: 56, number: 976818537)
contact.main_email = email
contact.main_phone = phone
contact.save
