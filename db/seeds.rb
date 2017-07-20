# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Item.destroy_all
User.destroy_all

c1 = Category.create!(name: "Electronica")
c2 = Category.create!(name: "Hogar")

u1 = User.create!(name: "Guillermo", email:"g@g.com")	

Item.create!(code:1234, size: 40, description: "Cualquier cosa", user: u1, category_id: c1.id)

