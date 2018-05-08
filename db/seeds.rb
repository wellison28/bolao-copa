# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r = Round.create(number: 5)
Match.create(home: "São Paulo", guest: "Palmeiras", date: "28/10/1992", round: r)
Match.create(home: "Corintians", guest: "Santos", date: "28/10/1992", round: r)
Match.create(home: "Vasco", guest: "Fluminense", date: "28/10/1992", round: r)