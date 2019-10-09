# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# ************************ We destroy our users and our items ************************  

User.destroy_all
Item.destroy_all
Category.destroy_all
Type.destroy_all

@male = Category.create(sex: "Homme")
@female = Category.create(sex: "Femme")
@pull = Type.create(name: "pull")
@chemise = Type.create(name: "chemise")
@pantalon = Type.create(name: "pantalon")

# ---------------------------- We create our users and our items ---------------------------- #
20.times do 

	user = User.create!(
		email: Faker::Internet.email,
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		password: Faker::Internet.password)

	item = Item.create!(
		name: "homme",
		price: rand(1..1000),
		category: @male,
		type: @pantalon)
	
	item = Item.create!(
		name: "femme",
		price: rand(1..1000),
		category: @female,
		type: @chemise)


	# Puts to show every time an item is added
	puts "Item added"
end





# We create an admin
user = User.create!(
		email: "johnneige@yopmail.com",
		first_name: "John",
		last_name: "Neige",
		password: "dumdum",
		)

puts "-----------------------------"
puts "------- Admin created! ------"
puts "-----------------------------"

puts "Access to the admin account :"
puts "Login: johnneige@yopmail.com"
puts "Password: dumdum"
puts "-----------------------------"