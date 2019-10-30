class OrderItemsController < ApplicationController
	before_action :authenticate_user!
	def index
		@orders = current_user.orders
		@last_order = @orders.last

		@last_order_items = @last_order.item_sizes
		@item_sizes = @last_order_items
	end
end
