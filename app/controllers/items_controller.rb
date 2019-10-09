class ItemsController < ApplicationController

	def index
	sex = params[:c] # should be all in this case
  @items = Item.where(:category_id => sex)

	end
end
