class Admins::ItemSizesController < ApplicationController
	before_action :authenticate_user!
	before_action :check_if_admin

	def index
		@item = Item.find(params[:item_id])
		@item_sizes = ItemSize.where(item_id: @item)
	end

	def new
		@item_size = ItemSize.new
		@item = Item.find(params[:item_id])
	end

	def create
		@item = Item.find(params[:item_id])

		@item_size = ItemSize.new(item_id: params[:item_id], size_id: params[:size], stock: params[:stock].to_i)
			if @item_size.save
				redirect_to new_admins_item_size_path(item_id: @item)
				flash[:success] = "Les informations ont bien été enregistrées"
			else 
				flash[:alert] = "Un problème est survenu, veuillez reessayer"
				puts "*"*100
				puts @item_size.errors.messages
				render :new, :object => @item
			end
	end

	def edit
		@item_size = ItemSize.find(params[:id])
	end

	def update
		@item_size = ItemSize.find(params[:id])
		@item_size.update(stock: params[:stock].to_i)
			if @item_size.save
				redirect_to admins_item_sizes_path(item_id: @item_size.item_id)
				flash[:success] = "Les informations ont bien été enregistrées"
			else 
				flash[:alert] = "Un problème est survenu, veuillez reessayer"
				puts "*"*100
				puts @item_size.errors.messages
				render :edit
			end
		
	end

	def check_if_admin
		if current_user.is_admin == false
			flash[:error] = "Vous n'êtes pas un administrateur !"
			redirect_to root_path
		end
	end

end