class OrderItemsController < ApplicationController
	before_action :authenticate_user!
	def index
		@orders = current_user.orders
		@order = @orders.last
		@item_sizes = @order.item_sizes
	end
end
