# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
puts 'Database wiped'
Task.create(title: "Take dog on walk", details: 'has to be out for more than 30 minutes', completed: false)
Task.create(title: "Make dinner", details: 'be sure to go shopping for the ingredients first', completed: false)
Task.create(title: "Wash my workout gear", details: 'might need to buy more laundry soap', completed: false)
puts "3 sample tasks added to test database"
