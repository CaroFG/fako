class Admins::ItemsController < ApplicationController
	before_action :authenticate_user!
	before_action :check_if_admin

	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(name: params[:name], price: params[:price], description: params[:description], category: Category.find( params[:category].to_i), type: Type.find(params[:type].to_i))
		@item.picture.attach(params[:picture])
			if @item.save
				redirect_to new_admins_item_size_path(item_id: @item)
				flash[:success] = "L'article a bien été crée"
			else 
				flash[:alert] = "Un problème est survenu, veuillez reessayer"
				render :new
			end
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
		@item.picture.attach(params[:picture])
		if @item.update(name: params[:name], price: params[:price], description: params[:description], category: Category.find(params[:category].to_i), type: Type.find(params[:type].to_i))
			redirect_to admins_items_path
			flash[:success] = "Les modifications ont bien été enregistrées"
		else
			flash[:alert]= "Un problème est survenu, veuillez reessayer"
			render :edit
		end
	end

	def destroy
		@item = Item.find(params[:id])
		if @item.destroy
			redirect_to admins_items_path
			flash[:success] = "L'article a bien été supprimé"
		else
			flash[:alert] = "Un problème est survenu, veuillez reessayer"
		end
	end

	def check_if_admin
		if current_user.is_admin == false
			flash[:error] = "Vous n'êtes pas un administrateur !"
			redirect_to root_path
		end
	end
end