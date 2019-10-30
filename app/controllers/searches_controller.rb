class SearchesController < ApplicationController
	def index
		@items = Item.all 
		@search = params[:search]
	    if @search.present?

	    	terms = @search.downcase.split(/\s+/)
    		# replace "*" with "%" for wildcard searches,
    		# append '%', remove duplicate '%'s
  		  terms = terms.map { |e|
   		   ('%' + e.gsub('*', '%') + '%').gsub(/%+/, '%')
    		}

	      @items = Item.where("LOWER(name) ILIKE ?", terms.map { |e| [e] }.flatten).or(Item.where("LOWER(description) ILIKE ?", terms.map { |e| [e] }.flatten))
	    end
	end
end
