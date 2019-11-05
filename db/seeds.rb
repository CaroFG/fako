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
Size.destroy_all
ItemSize.destroy_all

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
@xl = Size.create!(name:"XL")
@l = Size.create!(name:"L")
@m = Size.create!(name: "M")
@s = Size.create!(name: "S")
@xs = Size.create!(name: "XS")
@tu = Size.create!(name: "TU")
@trente_six = Size.create!(name: "36")
@trente_sept = Size.create!(name: "37")
@trente_huit = Size.create!(name: "38")
@trente_neuf = Size.create!(name: "39")
@quarante = Size.create!(name: "40")
@quarante_et_un = Size.create!(name: "41")
@quarante_deux = Size.create!(name: "42")
@quarante_trois = Size.create!(name: "43")
@quarante_quatre = Size.create!(name: "44")
@quarante_cinq = Size.create!(name: "45")



# ---------------------------- We create our users and our items ---------------------------- #
5.times do 

	user = User.create!(
		email: Faker::Internet.email,
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		password: Faker::Internet.password)
	# Puts to show every time an item is added
	puts "User added"
end



total_look_jaune = Item.create!(
		name: "Total look jaune",
		price: 70,
		category: @female,
		type: @totallook,
		description: Faker::Lorem.sentence,
		image_path: "sangoku-woman.jpg")
puts "Total look jaune added"

total_look_jaune_xl = ItemSize.create!(item_id: total_look_jaune.id, size_id: @xl.id, stock: 100)
total_look_jaune_l = ItemSize.create!(item_id: total_look_jaune.id, size_id: @l.id, stock: 100)
total_look_jaune_m = ItemSize.create!(item_id: total_look_jaune.id, size_id: @m.id, stock: 100)
total_look_jaune_s = ItemSize.create!(item_id: total_look_jaune.id, size_id: @s.id, stock: 100)
total_look_jaune_xs = ItemSize.create!(item_id: total_look_jaune.id, size_id: @xs.id, stock: 100)

puts "Total look jaune SIZES added"

chemisier = Item.create!(
		name: "Chemisier en satin",
		price: 40,
		category: @female,
		type: @chemise,
		description: Faker::Lorem.sentence,
		image_path: "plant-girl.jpg")
puts "Chemisier added"

chemisier_xl =ItemSize.create!(item_id:chemisier.id, size_id: @xl.id, stock: 100)
chemisier_l =ItemSize.create!(item_id:chemisier.id, size_id: @l.id, stock: 100)
chemisier_m =ItemSize.create!(item_id:chemisier.id, size_id: @m.id, stock: 100)
chemisier_s =ItemSize.create!(item_id:chemisier.id, size_id: @s.id, stock: 100)
chemisier_xs =ItemSize.create!(item_id:chemisier.id, size_id: @xs.id, stock: 100)

puts "Chemisier SIZES added"

total_look_bleu = Item.create!(
	name: "Total look bleu",
	price: 70,
	category: @female,
	type: @totallook,
	description: Faker::Lorem.sentence,
	image_path: "jean.jpg")
puts "Total look bleu added"

total_look_bleu_xl = ItemSize.create!(item_id: total_look_bleu.id, size_id: @xl.id, stock: 100)
total_look_bleu_l = ItemSize.create!(item_id: total_look_bleu.id, size_id: @l.id, stock: 100)
total_look_bleu_m = ItemSize.create!(item_id: total_look_bleu.id, size_id: @m.id, stock: 100)
total_look_bleu_s = ItemSize.create!(item_id: total_look_bleu.id, size_id: @s.id, stock: 100)
total_look_bleu_xs = ItemSize.create!(item_id: total_look_bleu.id, size_id: @xs.id, stock: 100)

puts "Total look bleu SIZES added"

robe = Item.create!(
	name: "Robe à motifs",
	price: 35,
	category: @female,
	type: @robe,
	description: Faker::Lorem.sentence,
	image_path: "dress.jpg")
puts "Robe à motif added"

robe_xl = ItemSize.create!(item_id: robe.id, size_id: @xl.id, stock: 100)
robe_l = ItemSize.create!(item_id: robe.id, size_id: @l.id, stock: 100)
robe_m = ItemSize.create!(item_id: robe.id, size_id: @m.id, stock: 100)
robe_s = ItemSize.create!(item_id: robe.id, size_id: @s.id, stock: 100)
robe_xs = ItemSize.create!(item_id: robe.id, size_id: @xs.id, stock: 100)

puts "Robe à motif SIZES added"

veste = Item.create!(
	name: "Veste en daim",
	price: 100,
	category: @male,
	type: @veste,
	description: Faker::Lorem.sentence,
	image_path: "man1.jpeg")
puts "Veste added"

veste_xl = ItemSize.create!(item_id: veste.id, size_id: @xl.id, stock: 100)
veste_l = ItemSize.create!(item_id: veste.id, size_id: @l.id, stock: 100)
veste_m = ItemSize.create!(item_id: veste.id, size_id: @m.id, stock: 100)
veste_s = ItemSize.create!(item_id: veste.id, size_id: @s.id, stock: 100)
veste_xs = ItemSize.create!(item_id: veste.id, size_id: @xs.id, stock: 100)

puts "Veste SIZES added"

pantalon_slim = Item.create!(
	name: "Pantalon extra-slim",
	price: 45,
	category: @male,
	type: @pantalon,
	description: Faker::Lorem.sentence,
	image_path: "trouser-man.jpg")
puts "Pantalon slim added"

pantalon_slim_xl	= ItemSize.create!(item_id: pantalon_slim.id, size_id: @xl.id, stock: 100)
pantalon_slim_l	= ItemSize.create!(item_id: pantalon_slim.id, size_id: @l.id, stock: 100)
pantalon_slim_m	= ItemSize.create!(item_id: pantalon_slim.id, size_id: @m.id, stock: 100)
pantalon_slim_s	= ItemSize.create!(item_id: pantalon_slim.id, size_id: @s.id, stock: 100)
pantalon_slim_xs	= ItemSize.create!(item_id: pantalon_slim.id, size_id: @xs.id, stock: 100)

puts "Pantalon slim SIZES added"

pantalon_carreaux = Item.create!(
	name: "Pantalon à carreaux",
	price: 40,
	category: @male,
	type: @pantalon,
	description: Faker::Lorem.sentence,
	image_path: "check-pants.jpg")
puts "Pantalon carreaux added"

pantalon_carreaux_xl = ItemSize.create!(item_id: pantalon_carreaux.id, size_id: @xl.id, stock: 100)
pantalon_carreaux_l	= ItemSize.create!(item_id: pantalon_carreaux.id, size_id: @l.id, stock: 100)
pantalon_carreaux_m	= ItemSize.create!(item_id: pantalon_carreaux.id, size_id: @m.id, stock: 100)
pantalon_carreaux_s	= ItemSize.create!(item_id: pantalon_carreaux.id, size_id: @s.id, stock: 100)
pantalon_carreaux_xs	= ItemSize.create!(item_id: pantalon_carreaux.id, size_id: @xs.id, stock: 100)

puts "Pantalon carreaux SIZES added"

veste_costume = Item.create!(
	name: "Veste de costume",
	price: 55,
	category: @male,
	type: @veste,
	description: Faker::Lorem.sentence,
	image_path: "charles.jpg")
puts "Veste de costume added"

veste_costume_xl = ItemSize.create!(item_id: veste_costume.id, size_id: @xl.id, stock: 100)
veste_costume_l = ItemSize.create!(item_id: veste_costume.id, size_id: @l.id, stock: 100)
veste_costume_m	= ItemSize.create!(item_id: veste_costume.id, size_id: @m.id, stock: 100)
veste_costume_s	= ItemSize.create!(item_id: veste_costume.id, size_id: @s.id, stock: 100)
veste_costume_xs	= ItemSize.create!(item_id: veste_costume.id, size_id: @xs.id, stock: 100)

puts "Veste de costume SIZES added"

baskets = Item.create!(
	name: "Baskets",
	price: 100,
	category: @unisex,
	type: @chaussures,
	description: Faker::Lorem.sentence,
	image_path: "colorful-sneakers.jpeg")
puts "Baskets added"

baskets_45 = ItemSize.create!(item_id: baskets.id, size_id: @quarante_cinq.id, stock: 100)
baskets_44 = ItemSize.create!(item_id: baskets.id, size_id: @quarante_quatre.id, stock: 100)
baskets_43	= ItemSize.create!(item_id: baskets.id, size_id: @quarante_trois.id, stock: 100)
baskets_42	= ItemSize.create!(item_id: baskets.id, size_id: @quarante_deux.id, stock: 100)
baskets_41	= ItemSize.create!(item_id: baskets.id, size_id: @quarante_et_un.id, stock: 100)
baskets_40	= ItemSize.create!(item_id: baskets.id, size_id: @quarante.id, stock: 100)
baskets_39	= ItemSize.create!(item_id: baskets.id, size_id: @trente_neuf.id, stock: 100)
baskets_38	= ItemSize.create!(item_id: baskets.id, size_id: @trente_huit.id, stock: 100)
baskets_37	= ItemSize.create!(item_id: baskets.id, size_id: @trente_sept.id, stock: 100)
baskets_36	= ItemSize.create!(item_id: baskets.id, size_id: @trente_six.id, stock: 100)

puts "Baskets SIZES added"

bottines = Item.create!(
	name: "Bottines transparentes",
	price: 130,
	category: @female,
	type: @chaussures,
	description: Faker::Lorem.sentence,
	image_path: "transparent-boots.jpeg")
puts "Bottines added"

bottines_45 = ItemSize.create!(item_id: bottines.id, size_id: @quarante_cinq.id, stock: 100)
bottines_44 = ItemSize.create!(item_id: bottines.id, size_id: @quarante_quatre.id, stock: 100)
bottines_43	= ItemSize.create!(item_id: bottines.id, size_id: @quarante_trois.id, stock: 100)
bottines_42	= ItemSize.create!(item_id: bottines.id, size_id: @quarante_deux.id, stock: 100)
bottines_41	= ItemSize.create!(item_id: bottines.id, size_id: @quarante_et_un.id, stock: 100)
bottines_40	= ItemSize.create!(item_id: bottines.id, size_id: @quarante.id, stock: 100)
bottines_39	= ItemSize.create!(item_id: bottines.id, size_id: @trente_neuf.id, stock: 100)
bottines_38	= ItemSize.create!(item_id: bottines.id, size_id: @trente_huit.id, stock: 100)
bottines_37	= ItemSize.create!(item_id: bottines.id, size_id: @trente_sept.id, stock: 100)
bottines_36	= ItemSize.create!(item_id: bottines.id, size_id: @trente_six.id, stock: 100)

puts "Bottines SIZES added"

chaussures = Item.create!(
	name: "Chaussures à lacets",
	price: 70,
	category: @female,
	type: @chaussures,
	description: Faker::Lorem.sentence,
	image_path: "smart-shoes.jpeg")
puts "Chaussures à lacets added"

chaussures_45 = ItemSize.create!(item_id: chaussures.id, size_id: @quarante_cinq.id, stock: 100)
chaussures_44 = ItemSize.create!(item_id: chaussures.id, size_id: @quarante_quatre.id, stock: 100)
chaussures_43	= ItemSize.create!(item_id: chaussures.id, size_id: @quarante_trois.id, stock: 100)
chaussures_42	= ItemSize.create!(item_id: chaussures.id, size_id: @quarante_deux.id, stock: 100)
chaussures_41	= ItemSize.create!(item_id: chaussures.id, size_id: @quarante_et_un.id, stock: 100)
chaussures_40	= ItemSize.create!(item_id: chaussures.id, size_id: @quarante.id, stock: 100)
chaussures_39	= ItemSize.create!(item_id: chaussures.id, size_id: @trente_neuf.id, stock: 100)
chaussures_38	= ItemSize.create!(item_id: chaussures.id, size_id: @trente_huit.id, stock: 100)
chaussures_37	= ItemSize.create!(item_id: chaussures.id, size_id: @trente_sept.id, stock: 100)
chaussures_36	= ItemSize.create!(item_id: chaussures.id, size_id: @trente_six.id, stock: 100)

puts "Chaussures à lacets SIZES added"

boots = Item.create!(
	name: "Boots",
	price: 100,
	category: @unisex,
	type: @chaussures,
	description: Faker::Lorem.sentence,
	image_path: "brown-boots.jpeg")
puts "Boots added"

boots_45 = ItemSize.create!(item_id: boots.id, size_id: @quarante_cinq.id, stock: 100)
boots_44 = ItemSize.create!(item_id: boots.id, size_id: @quarante_quatre.id, stock: 100)
boots_43	= ItemSize.create!(item_id: boots.id, size_id: @quarante_trois.id, stock: 100)
boots_42	= ItemSize.create!(item_id: boots.id, size_id: @quarante_deux.id, stock: 100)
boots_41	= ItemSize.create!(item_id: boots.id, size_id: @quarante_et_un.id, stock: 100)
boots_40	= ItemSize.create!(item_id: boots.id, size_id: @quarante.id, stock: 100)
boots_39	= ItemSize.create!(item_id: boots.id, size_id: @trente_neuf.id, stock: 100)
boots_38	= ItemSize.create!(item_id: boots.id, size_id: @trente_huit.id, stock: 100)
boots_37	= ItemSize.create!(item_id: boots.id, size_id: @trente_sept.id, stock: 100)
boots_36	= ItemSize.create!(item_id: boots.id, size_id: @trente_six.id, stock: 100)

puts "Boots SIZES added"

banane = Item.create!(
	name: "Banane",
	price: 35,
	category: @unisex,
	type: @accessoires,
	description: Faker::Lorem.sentence,
	image_path: "fanny-pack.jpeg")
puts "Banane added"

banane_tu = ItemSize.create!(item_id: banane.id, size_id: @tu.id, stock: 100)

puts "Banane TU added"

lunettes = Item.create!(
	name: "Lunettes de soleil",
	price: 100,
	category: @female,
	type: @accessoires,
	description: Faker::Lorem.sentence,
	image_path: "sunglasses.jpeg")
puts "Lunettes added"

lunettes_tu = ItemSize.create!(item_id: lunettes.id, size_id: @tu.id, stock: 100)

puts "Lunettes TU added"

boucle = Item.create!(
	name: "Boucle d'oreille tête de mort",
	price: 25,
	category: @unisex,
	type: @accessoires,
	description: Faker::Lorem.sentence,
	image_path: "skull-earring.jpeg")
puts "Boucle added"

boucle_tu = ItemSize.create!(item_id: boucle.id, size_id: @tu.id, stock: 100)

puts "Boucle TU added"

montre = Item.create!(
	name: "Montre",
	price: 65,
	category: @unisex,
	type: @accessoires,
	description: Faker::Lorem.sentence,
	image_path: "watch.jpeg")
puts "Montre added"

montre_tu = ItemSize.create!(item_id: montre.id, size_id: @tu.id, stock: 100)

puts "Montre TU added"

# We create an admin
user = User.create!(
		email: "johnneige@yopmail.com",
		first_name: "John",
		last_name: "Neige",
		password: "dumdum",
		is_admin: "true"
		)

puts "-----------------------------"
puts "------- Admin created! ------"
puts "-----------------------------"

puts "Access to the admin account :"
puts "Login: johnneige@yopmail.com"
puts "Password: dumdum"
puts "-----------------------------"