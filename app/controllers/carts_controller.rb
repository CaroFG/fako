class CartsController < ApplicationController
	def show
		@cart = Cart.find(params[:id])
				# We want to show the items in the cart only once, so we create a new array
		# without the duplicate entries
		@cart_items = @cart.items
		@cart_items_unique = @cart_items.uniq
	end
end
