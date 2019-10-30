class NewItemsController < ApplicationController
	def index
		  @items = Item.where("created_at < ? ", Time.now).order('created_at DESC').limit(15)
	end
end
