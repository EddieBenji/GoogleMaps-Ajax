# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Zombie.create(name: 'Eduardo', bio: 'Software Engineer',
              email: 'eduardo_benji@hotmail.com')
Zombie.create(name: 'Ed', bio: 'Software developer',
              email: 'eduardo.942712@gmail.com')

Role.create(title: 'Captain')
Role.create(title: 'Scout')
Role.create(title: 'Soldier')
Role.create(title: 'Brain Tester')

# Homework
Student.create(registration_number: '07002763', name: 'Josué',
               first_last_name: 'Brito', second_last_name: 'Ruz', age: 24,
               street: '5', crossings: '32 y 34', number: 242, suburb:
                   'Pensiones', postal_code: '97219', latitude: '20.9978100',
               altitude: '-89.639808', password: 'josue')

Student.create(registration_number: '11216376', name: 'José Luis',
               first_last_name: 'Blanco', second_last_name: 'Ordaz', age: 27,
               street: '31', crossings: '8 y 70', number: 104, suburb:
                   'Centro', postal_code: '97320', latitude: '21.284595',
               altitude: '-89.657243', password: 'joseluis')

Student.create(registration_number: '13176309', name: 'Irving Rafael',
               first_last_name: 'Che', second_last_name: 'Chan', age: 21,
               street: '48', crossings: '143 y 145', number: 836,
               suburb: 'Sn. José Tecoh', postal_code: '97299',
               latitude: '20.68066', altitude: '-89.6248113',
               password: 'irving')

Student.create(registration_number: '10003796', name: 'José Fernando',
               first_last_name: 'Quiñones', second_last_name: 'Tun', age: 21,
               street: '22', crossings: '5B y 5C', number: 231,
               suburb: 'Juan Pablo II', postal_code: '97246',
               latitude: '20.980369',
               altitude: '-89.675039', password: 'josefernando')

Student.create(registration_number: '10000940', name: 'Eduardo',
               first_last_name: 'Rodríguez', second_last_name: 'González',
               age: 20, street: '58', crossings: '51', number: 498,
               suburb: 'Granjas', postal_code: '97197',
               latitude: '20.935148', altitude: '-89.592957',
               password: 'eduardo')

Student.create(registration_number: '10000636', name: 'Jonathan',
               first_last_name: 'González', second_last_name: 'Navarrete',
               age: 20, street: '39A', crossings: '14 y 20A', number: 366,
               suburb: 'Mayapan', postal_code: '97159',
               latitude: '20.58465', altitude: '-89.35430',
               password: 'jonathan')

Student.create(registration_number: '13116356', name: 'André',
               first_last_name: 'Chay', second_last_name: 'Sonda',
               age: 20, street: '128', crossings: '31 y 31A', number: 0,
               suburb: 'Nva. Yucalpetén', postal_code: '97320',
               latitude: '21.279752', altitude: '-89.688529',
               password: 'andre')

Student.create(registration_number: '13116339', name: 'Edwin Julián',
               first_last_name: 'González', second_last_name: 'Correa',
               age: 20, street: '46', crossings: '125a y 125b', number: 528,
               suburb: 'Amp Hda.', postal_code: '97289',
               latitude: '20.930819', altitude: '-89.613564',
               password: 'edwin')

Student.create(registration_number: '13116349', name: 'Esteban Arseño',
               first_last_name: 'Kuh', second_last_name: 'May',
               age: 20, street: '129', crossings: '88 y 90', number: 716,
               suburb: 'Emiliano Zapata', postal_code: '97297',
               latitude: '20.92934', altitude: '-89.645857',
               password: 'estebanarseño')

Student.create(registration_number: '10003337', name: 'Antonio',
               first_last_name: 'Alonzo', second_last_name: 'Cortazar',
               age: 20, street: '66', crossings: '55 y 57', number: 481,
               suburb: 'Centro', postal_code: '97000',
               latitude: '20.970806', altitude: '-89.626506',
               password: 'antonio')

Student.create(registration_number: '09001540', name: 'Josafat',
               first_last_name: 'Padilla', second_last_name: 'Chi',
               age: 21, street: '41', crossings: '24 y 26', number: 315,
               suburb: 'Juan pablo II', postal_code: '97246',
               latitude: '20.968052', altitude: '-89.678824',
               password: 'josafat')


Student.create(registration_number: '10216376', name: 'Javier',
               first_last_name: 'Mijangos', second_last_name: 'Saucedo', age:
                   24,
               street: '15', crossings: '14 y 16', number: 141, suburb:
                   'Mulsay', postal_code: '92647', latitude: '20.9726563',
               altitude: '-89.6716562', password: 'javier')

Student.create(registration_number: '09000856', name: 'Lalo',
               first_last_name: 'Canché', second_last_name: 'Vázquez', age: 22,
               street: '27a', crossings: '10B y 10C', number: 258, suburb:
                   'Vergel 2', postal_code: '97173', latitude: '20.9495887',
               altitude: '-89.5870572', password: 'lalo')