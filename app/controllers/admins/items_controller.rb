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
		@item = Item.new(name: params[:name], price: params[:price], description: params[:description], category: params[:category], type: params[:type])
			if @item.save
				redirect_to admins_users_path 
				flash[:success] = "L'article a bien été crée"
			else 
				flash[:alert] = "Un problème est survenu, veuillez reessayer"
				render :new
			end
	end

	def check_if_admin
		if current_user.is_admin == false
			flash[:error] = "Vous n'êtes pas un administrateur !"
			redirect_to root_path
		end
	end
end