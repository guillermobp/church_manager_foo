# Región de Los Ríos
region = Region.create(name: 'De Los Ríos')
# ## Provincia de Valdivia
province = Province.create(name: 'Valdivia', region: region)
# #### Comunas
commune = Commune.create(name: 'Corral', province: province)
commune = Commune.create(name: 'Lanco', province: province)
commune = Commune.create(name: 'Los Lagos', province: province)
commune = Commune.create(name: 'Mariquina', province: province)
commune = Commune.create(name: 'Máfil', province: province)
commune = Commune.create(name: 'Paillaco', province: province)
commune = Commune.create(name: 'Panguipulli', province: province)
commune = Commune.create(name: 'Valdivia', province: province)
# ## Provincia Del Ranco
province = Province.create(name: 'Del Ranco', region: region)
# #### Comunas
commune = Commune.create(name: 'La Unión', province: province)
commune = Commune.create(name: 'Futrono', province: province)
commune = Commune.create(name: 'Río Bueno', province: province)
commune = Commune.create(name: 'Lago Ranco', province: province)
# Region del Biobío
region = Region.create(name: 'Del Biobío')
# ## Provincias
province = Province.create(name: 'Arauco', region: region)
province = Province.create(name: 'Biobío', region: region)
province = Province.create(name: 'Concepción', region: region)
# #### Comunas
commune = Commune.create(name: 'Concepción', province: province)
church = Church.create(name: 'Parroquia San Agustín de Concepción', manager: 'Juliano')
address = Address.create(street_name: 'Castellón', street_number: 254, reference: 'Entre Lord Cochrane y San Martín', zip_code: '4070124', latitude: -36.827810, longitude: -73.045677, commune: commune, church: church)

priest = Priest.create(church: church, first_name: 'Agustín', last_name: 'de Hipona', display_name: 'San Agustín', active: true)
priest = Priest.create(church: church, first_name: 'Osvaldo', last_name: 'Walker', display_name: 'Padre Osvaldo')

commune = Commune.create(name: 'Coronel', province: province)
commune = Commune.create(name: 'Chiguayante', province: province)
commune = Commune.create(name: 'Florida', province: province)
commune = Commune.create(name: 'Hualpén', province: province)
commune = Commune.create(name: 'Hualqui', province: province)
commune = Commune.create(name: 'Lota', province: province)
commune = Commune.create(name: 'Penco', province: province)
commune = Commune.create(name: 'San Pedro de la Paz', province: province)
commune = Commune.create(name: 'Santa Juana', province: province)
commune = Commune.create(name: 'Talcahuano', province: province)
commune = Commune.create(name: 'Tomé', province: province)
# ## Provincias
province = Province.create(name: 'Ñuble', region: region)
# Región Metropolitana
region = Region.create(name: 'Metropolitana')
# ## Provincias
province = Province.create(name: 'Santiago', region: region)
# #### Comunas
commune = Commune.create(name: 'Providencia', province: province)

church = Church.create(name: 'Parroquia de la Anunciación')
address = Address.create(street_name: 'Avenida Pedro de Valdivia', street_number: 1850, reference: 'Barrio Plaza Pedro de Valdivia', commune: commune, church: church)

priest = Priest.create(church: church, first_name: 'Agustín', last_name: 'de Hipona', display_name: 'San Agustín', active: true)
priest = Priest.create(church: church, first_name: 'Osvaldo', last_name: 'Walker', display_name: 'Padre Osvaldo')

# People
Person.create(national_identification_number: 11111111, first_name: 'Uno', last_name: 'Primero', display_name: 'Uno Primero', avatar_url: nil, birth_date: '1980-01-01', birth_commune_id: Commune.find_by(name: 'Concepción'))
Person.create(national_identification_number: 22222222, first_name: 'Dos', last_name: 'Segundo', display_name: nil, avatar_url: nil, birth_date: '1980-01-01', birth_commune_id: Commune.find_by(name: 'Concepción'))
Person.create(national_identification_number: 33333333, first_name: 'Tres', last_name: 'Tercero', display_name: nil, avatar_url: nil, birth_date: '1980-01-01', birth_commune_id: Commune.find_by(name: 'Concepción'))
Person.create(national_identification_number: 44444444, first_name: 'Cuatro', last_name: 'Cuarto', display_name: nil, avatar_url: nil, birth_date: '1980-01-01', birth_commune_id: Commune.find_by(name: 'Concepción'))
Person.create(national_identification_number: 55555555, first_name: 'Cinco', last_name: 'Quinto', display_name: nil, avatar_url: nil, birth_date: '1980-01-01', birth_commune_id: Commune.find_by(name: 'Concepción'))
Person.create(national_identification_number: 66666666, first_name: 'Seis', last_name: 'Sexto', display_name: nil, avatar_url: nil, birth_date: '1980-01-01', birth_commune_id: Commune.find_by(name: 'Concepción'))
Person.create(national_identification_number: 77777777, first_name: 'Siete', last_name: 'Séptimo', display_name: nil, avatar_url: nil, birth_date: '1980-01-01', birth_commune_id: Commune.find_by(name: 'Concepción'))
Person.create(national_identification_number: 88888888, first_name: 'Ocho', last_name: 'Octavo', display_name: nil, avatar_url: nil, birth_date: '1980-01-01', birth_commune_id: Commune.find_by(name: 'Concepción'))
Person.create(national_identification_number: 99999999, first_name: 'Nueve', last_name: 'Noveno', display_name: nil, avatar_url: nil, birth_date: '1980-01-01', birth_commune_id: Commune.find_by(name: 'Concepción'))

# Baptisms
priest = Priest.find(1)
baptised = Person.find_by(national_identification_number: 11111111)
mother = Person.find_by(national_identification_number: 22222222)
father = Person.find_by(national_identification_number: 33333333)
godmother = Person.find_by(national_identification_number: 44444444)
godfather = Person.find_by(national_identification_number: 55555555)
Baptism.create(priest: priest, baptised: baptised, mother: mother, father: father, godfather: godfather, godmother: godmother, date: Date.current)

baptised = Person.find_by(national_identification_number: 77777777)
mother = Person.find_by(national_identification_number: 22222222)
father = Person.find_by(national_identification_number: 33333333)
godmother = Person.find_by(national_identification_number: 88888888)
godfather = Person.find_by(national_identification_number: 99999999)
Baptism.create(priest: priest, baptised: baptised, mother: mother, father: father, godfather: godfather, godmother: godmother, date: Date.current)
