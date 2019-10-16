class TypesController < ApplicationController
	def index
	name = params[:c] # should be all in this case
  @items = Item.where(:type_id => name)
	end

	def show
		@item = Item.find(params[:id])
	end
end
