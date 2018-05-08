# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all # vs. .delete_all
Category.create! name_for_goals: 'to implement', name_for_expertises: 'implementing'
Category.create! name_for_goals: 'to learn', name_for_expertises: 'learning'
Category.create! name_for_goals: 'to connect', name_for_expertises: 'connecting'
Category.create! name_for_goals: 'to visit', name_for_expertises: 'visiting'
Charity.destroy_all
Charity.create! name: 'Garvan Institute of Medical Research', url: 'https://www.garvan.org.au/'
