class Admins::TypesController < ApplicationController
	before_action :authenticate_user!
	before_action :check_if_admin

	def index
		@types = Type.all
	end

	def new
		@type = Type.new
	end

	def create
		@type = Type.new(name: params[:name])
		if @type.save
			redirect_to admins_types_path
			flash[:success] = "Le nouveau vêtement a bien été créé"
		else
			flash[:alert] = "Un problème est survenu, veuillez réessayer"
			render :new
		end
	end

	def edit
		@type = Type.find(params[:id])
	end

	def update
		@type = Type.find(params[:id])
		if @type.update(name: params[:name])
			redirect_to admins_types_path
			flash[:success] = "Les modifications ont bien été enregistrées"
		else
			flash[:alert]= "Un problème est survenu, veuillez réessayer"
			render :edit
		end
		
	end

	def destroy
		@type = Type.find(params[:id])
		if @type.destroy
			redirect_to admins_types_path
			flash[:success] = "Le type de vêtement a bien été supprimé"
		else
			flash[:alert]= "Un problème est survenu, veuillez réessayer"
		end	
	end

	def check_if_admin
		if current_user.is_admin == false
			flash[:error] = "Vous n'êtes pas un administrateur !"
			redirect_to root_path
		end
	end
end