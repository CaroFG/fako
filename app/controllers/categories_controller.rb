class CategoriesController < ApplicationController
	def index
		@items = Item.where.not(type_id: Type.where(name: "chaussures")).where.not(type_id: Type.where(name: "accessoires"))
	end

end
