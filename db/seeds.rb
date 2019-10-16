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
@unisex = Category.create(sex: "Unisex")
@pull = Type.create(name: "pull")
@chemise = Type.create(name: "chemise")
@pantalon = Type.create(name: "pantalon")
@totallook = Type.create(name: "totallook")
@robe = Type.create(name: "robe")
@veste = Type.create(name: "veste")
@chaussures = Type.create(name: "chaussures")
@accessoires = Type.create(name: "accessoires")

# ---------------------------- We create our users and our items ---------------------------- #
20.times do 

	user = User.create!(
		email: Faker::Internet.email,
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		password: Faker::Internet.password)
	# Puts to show every time an item is added
	puts "Item added"
end



item = Item.create!(
		name: "Total look",
		price: 70,
		category: @female,
		type: @totallook,
		description: Faker::Lorem.sentence,
		image_path: "sangoku-woman.jpg")

item = Item.create!(
		name: "Chemisier en satin",
		price: 40,
		category: @female,
		type: @chemise,
		description: Faker::Lorem.sentence,
		image_path: "plant-girl.jpg")

item = Item.create!(
	name: "Total look bleu",
	price: 70,
	category: @female,
	type: @totallook,
	description: Faker::Lorem.sentence,
	image_path: "jean.jpg")

item = Item.create!(
	name: "Robe à motifs",
	price: 35,
	category: @female,
	type: @robe,
	description: Faker::Lorem.sentence,
	image_path: "dress.jpg")

item = Item.create!(
	name: "Veste en daim",
	price: 100,
	category: @male,
	type: @veste,
	description: Faker::Lorem.sentence,
	image_path: "man1.jpeg")

item = Item.create!(
	name: "Pantalon extra-slim",
	price: 45,
	category: @male,
	type: @pantalon,
	description: Faker::Lorem.sentence,
	image_path: "trouser-man.jpg")

item = Item.create!(
	name: "Pantalon à carreaux",
	price: 40,
	category: @male,
	type: @pantalon,
	description: Faker::Lorem.sentence,
	image_path: "check-pants.jpg")

item = Item.create!(
	name: "Veste de costume",
	price: 55,
	category: @male,
	type: @veste,
	description: Faker::Lorem.sentence,
	image_path: "charles.jpg")

item = Item.create!(
	name: "Baskets",
	price: 100,
	category: @unisex,
	type: @chaussures,
	description: Faker::Lorem.sentence,
	image_path: "colorful-sneakers.jpeg")

item = Item.create!(
	name: "Bottines transparentes",
	price: 130,
	category: @femme,
	type: @chaussures,
	description: Faker::Lorem.sentence,
	image_path: "transparent-boots.jpeg")

item = Item.create!(
	name: "Chaussures à lacets",
	price: 70,
	category: @femme,
	type: @chaussures,
	description: Faker::Lorem.sentence,
	image_path: "smart-shoes.jpeg")

item = Item.create!(
	name: "Boots",
	price: 150,
	category: @unisex,
	type: @chaussures,
	description: Faker::Lorem.sentence,
	image_path: "brown-boots.jpeg")

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