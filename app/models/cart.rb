class Cart < ApplicationRecord
	belongs_to :user
	has_many :cart_items
	has_many :item_sizes, through: :cart_items

	def total_cart_price
		#We set a counter at 0
		total = 0
		#We iterate through the items in the cart
		self.item_sizes.each do |item|
			#We add the price item at the counter at each iteration of the loop,
			#to obtain the total price
			total+= Item.find(item.item_id).price
		end

		return total
	end
end
