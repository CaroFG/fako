class OrdersController < ApplicationController
	before_action :authenticate_user!, only: [:index]
	def index
		@orders = current_user.orders
	end

	def show
		@order = Order.find(params[:id])
		@item_sizes = @order.item_sizes	
	end

		def create

		# We stock the current cart in a variable
		@cart = Cart.find(params[:cart_id])

		# We stock the cart's items in a variable
		@cart_items = @cart.item_sizes

		# We create a new order
		@order = Order.create(user_id: current_user.id)

		# Each item of this card is put in the order item table (with the id of the current order)
		@cart_items.each do |item|
			OrderItem.create(order_id: @order.id, item_size_id: item.id)
		end

		# We erase all entries from CartItems with the current card ID
		CartItem.where(cart_id: @cart.id).each do |entry|
			entry.destroy
		end
	end
end
