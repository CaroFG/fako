class TypesController < ApplicationController
	def index
	type = params[:type] # should be all in this case
  @items = Item.where(:type_id => type)
	end

	def show
		@item = Item.find(params[:id])
	end
end
