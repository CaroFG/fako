class SearchesController < ApplicationController
	def index
		@items = Item.all 
		@search = params[:search]
	    if @search.present?
	      @items = Item.where("name ILIKE ?", "%#{@search}%")
	    end
	end
end
